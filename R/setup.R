configure_code_display <- function(show_code_in_pdf) {
  if (!is.logical(show_code_in_pdf) || length(show_code_in_pdf) != 1L || is.na(show_code_in_pdf)) stop("Set params: show_code_in_pdf to true or false in index.Rmd")
  hide_pdf_code <- knitr::is_latex_output() && !isTRUE(show_code_in_pdf)
  knitr::opts_hooks$set(timeseries_hide_pdf_code = function(options) {
    if (isTRUE(options$timeseries_hide_pdf_code)) options$echo <- FALSE
    options
  })
  knitr::opts_chunk$set(timeseries_hide_pdf_code = hide_pdf_code)
  invisible(NULL)
}

knitr::opts_hooks$set(course_seed = function(options) {
  if (isTRUE(options$course_seed)) {
    chars <- utf8ToInt(options$label)
    set.seed(1000L + sum(chars * seq_along(chars)))
  }
  options
})
knitr::opts_chunk$set(course_seed = TRUE, error = FALSE)
