# Run from the book root: Rscript --vanilla scripts/build.R [all|html|pdf]
root <- normalizePath(getwd())
if (!file.exists("index.Rmd") || !file.exists("_bookdown.yml")) stop("Run from the book root")
source("R/instructor-build.R")
show_solutions <- edition_setting()

if (!rmarkdown::pandoc_available() && Sys.info()[["sysname"]] == "Darwin") {
  arch <- if (grepl("arm|aarch", Sys.info()[["machine"]])) "aarch64" else "x86_64"
  candidate <- file.path("/Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools", arch)
  if (file.exists(file.path(candidate, "pandoc"))) Sys.setenv(RSTUDIO_PANDOC = candidate)
  rmarkdown::find_pandoc(cache = FALSE)
}
if (!rmarkdown::pandoc_available()) stop("Pandoc is required")

mode <- commandArgs(trailingOnly = TRUE)
if (!length(mode)) mode <- "all"
formats <- c(html = "bookdown::gitbook", pdf = "bookdown::pdf_book")
if (length(mode) != 1L || !mode %in% c("all", names(formats))) stop("Choose all, html, or pdf")
if (mode != "all") formats <- formats[mode]

if (!requireNamespace("callr", quietly = TRUE)) stop("Package 'callr' is required to isolate successive book builds")
render_format <- function(format, output_dir = NULL) {
  callr::r(
    function(format, output_dir) {
      if (is.null(output_dir)) {
        bookdown::render_book("index.Rmd", output_format = format, clean = TRUE)
      } else {
        bookdown::render_book("index.Rmd", output_format = format, output_dir = output_dir, clean = TRUE)
      }
    },
    args = list(format = unname(format), output_dir = output_dir),
    libpath = .libPaths(), wd = getwd(), show = TRUE
  )
}

if (show_solutions) {
  stage <- private_build_stage(root)
  paths <- list.files(root, full.names = TRUE, all.files = TRUE, no.. = TRUE)
  paths <- paths[!basename(paths) %in% c(".git", "docs", "_bookdown_files")]
  for (path in paths) if (!file.copy(path, stage, recursive = TRUE)) stop("Cannot stage: ", path)
  setwd(stage)
  destination <- file.path(instructor_directory(root), "Rendered_book")
  dir.create(destination, recursive = TRUE, showWarnings = FALSE)
  for (format in formats) render_format(format, destination)
  setwd(root)
  unlink(stage, recursive = TRUE)
  cat("Private instructor edition: ", destination, "\n", sep = "")
} else {
  for (format in formats) render_format(format)
}
