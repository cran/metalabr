## ----setup, include = FALSE---------------------------------------------------
# all data chunks require network access, so they are skipped on CRAN
knitr::opts_chunk$set(
  collapse = TRUE, comment = "#>",
  fig.width = 6, fig.height = 4,
  eval = identical(Sys.getenv("NOT_CRAN"), "true")
)

## ----attach-------------------------------------------------------------------
# library(metalabr)

## ----get-data-----------------------------------------------------------------
# metalab_data <- get_metalab_data()
# if (!is.null(metalab_data)) {
#   dim(metalab_data)
# }

## ----pin-version--------------------------------------------------------------
# metalab_2023 <- get_metalab_data(version = "2023.1")
# if (!is.null(metalab_2023)) {
#   nrow(metalab_2023)
# }

## ----versions-----------------------------------------------------------------
# str(get_metalab_versions(), max.level = 2)

## ----install-redivis, eval = FALSE--------------------------------------------
# install.packages("redivis",
#                  repos = c("https://langcog.r-universe.dev",
#                            "https://cloud.r-project.org"))

## ----metadata-----------------------------------------------------------------
# metadata <- get_metalab_metadata()
# if (!is.null(metadata)) {
#   metadata[1:5, c("name", "domain", "num_papers", "num_experiments")]
# }

## ----mutex--------------------------------------------------------------------
# mutex <- get_metalab_data(short_names = "mutex", version = "2023.1")
# if (!is.null(mutex)) {
#   summary(mutex$g_calc)
# }

## ----funnel, fig.alt = "Funnel plot of the mutual exclusivity dataset"--------
# if (!is.null(mutex)) {
#   metalab_funnel_plot(mutex, "mutex")
# }

## ----funnel-test--------------------------------------------------------------
# if (!is.null(mutex)) {
#   metalab_funnel_test(mutex, "mutex")
# }

## ----current------------------------------------------------------------------
# current <- get_current_metalab_data()
# if (!is.null(current)) {
#   dim(current)
# }

