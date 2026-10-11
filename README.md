# Introduction to Time Series

Source repository for Jean-Paul Renne and Alain Monfort's course on time-series econometrics. The published book covers univariate and multivariate models, forecasting, non-stationarity, cointegration, and volatility.

## Companion R package

Course-specific procedures and datasets are supplied by [`IdSS`](https://github.com/jrenne/IdSS). Install the current package before rendering:

```r
install.packages("remotes")
remotes::install_github("jrenne/IdSS")
```

The book also uses standard CRAN packages, including `AER` for the `FrozenJuice` teaching dataset.

## Figure conventions

Figures use black and grey only. Multi-panel figures carry lettered panel
headings, while the numbered Bookdown caption provides the complete
description, line-style key, sample definition, and data source. Plot images do
not contain a redundant overall title or source note.

## Building the book

From the repository root:

```sh
Rscript --vanilla scripts/build.R html
Rscript --vanilla scripts/build.R pdf
Rscript --vanilla scripts/build.R all
```

The public build is controlled by `index.Rmd` and writes the student edition to `docs/`. RStudio's bundled Pandoc is detected automatically on macOS.

## Problem sets

PS1–PS4 and the fourteen true/false questions from the 2024 and 2025 exams are integrated into the relevant chapters of the public book with the same presentation used by the EcoStat course. Public files under `exercises/` contain statements only. Private hints and solutions remain outside this repository in:

```text
/Users/jrenne/Library/CloudStorage/Dropbox/Teaching/Macroeconometrics/Exercises/Instructor_materials/TimeSeries_Bookdown
```

Set `params: show_solutions: true` in `index.Rmd` and use `scripts/build.R` to create the private instructor edition. The script stages and renders that edition outside the public repository so solutions cannot accidentally be published.

The original LaTeX and PDF problem sets remain in `Macroeconometrics/Exercises`; the 2024 and 2025 exam sources remain in `Macroeconometrics/Exams/2024` and `Macroeconometrics/Exams/2025`. They are retained as an archive. Corrections made during migration are summarized in `exercises/README.md`.
