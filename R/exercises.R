# Public exercise renderer. Private answers are loaded only in the instructor edition.
read_exercises <- function(problem_set, root = ".") {
  paths <- sort(list.files(file.path(root, "exercises", problem_set), pattern = "\\.md$", full.names = TRUE))
  if (!length(paths)) stop("No exercises found for ", problem_set)
  entries <- lapply(paths, function(path) {
    meta <- rmarkdown::yaml_front_matter(path)
    lines <- readLines(path, warn = FALSE)
    start <- which(lines == "## Statement")
    if (length(start) != 1L) stop("Expected one Statement section in ", path)
    if (any(grepl("^## (Hint|Solution)", lines))) stop("Private material found in ", path)
    required <- c("id", "title", "difficulty", "type", "related")
    if (!all(required %in% names(meta))) stop("Missing metadata in ", path)
    meta$statement <- paste(lines[seq.int(start + 1L, length(lines))], collapse = "\n")
    meta
  })
  ids <- vapply(entries, `[[`, character(1), "id")
  if (anyDuplicated(ids)) stop("Duplicate exercise IDs")
  entries
}

render_exercises <- function(problem_set, ids = NULL) {
  entries <- read_exercises(problem_set)
  if (!is.null(ids)) {
    available <- vapply(entries, `[[`, character(1), "id")
    if (any(!ids %in% available)) stop("Unknown exercise IDs in ", problem_set, ": ", paste(setdiff(ids, available), collapse = ", "))
    entries <- entries[match(ids, available)]
  }
  answers <- NULL
  if (isTRUE(getOption("timeseries.show_solutions", FALSE))) {
    answers <- instructor_records(getOption("timeseries.instructor_dir"))
    ids <- vapply(entries, `[[`, character(1), "id")
    if (any(!ids %in% names(answers))) stop("Missing private solutions: ", paste(setdiff(ids, names(answers)), collapse = ", "))
  }
  output <- vapply(entries, function(x) paste0(
    if (knitr::is_latex_output()) "\\Needspace{24\\baselineskip}\n\n" else "",
    ":::: {.exercisebox data-latex=\"\"}\n\n",
    "::: {.exercise #", x$id, " name=\"", x$title, "\"}\n\n",
    "**", toupper(problem_set), " | ", x$difficulty, " | ", x$type, "**  \n",
    "Review Section \\@ref(", x$related, ").\n\n", x$statement, "\n\n:::\n\n::::\n",
    if (!is.null(answers)) paste0("\n", paste(sub("^## (Hint|Solution)$", "**\\1**", answers[[x$id]]$content), collapse = "\n"), "\n") else ""
  ), character(1))
  knitr::asis_output(paste(output, collapse = "\n"))
}
