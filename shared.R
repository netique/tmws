# custom print method for bertopic’s plotly plots --------------------------

print.plotly.graph_objs._figure.Figure <- function(x, ...) {
  plt_json <- x$to_plotly_json()
  plt_htmlwidget <- plotly::as_widget(plt_json)
  print(plt_htmlwidget)
}

knit_print.plotly.graph_objs._figure.Figure <- function(x, ..., options = NULL) {
  plt_json <- x$to_plotly_json()
  plt_htmlwidget <- plotly::as_widget(plt_json)
  knitr::knit_print(plt_htmlwidget, options = options, ...)
}


# list of tuples to tibble ------------------------------------------------

tuple_list_to_tibble <- function(.list) {
  .list |>
    purrr::list_transpose() |>
    dplyr::bind_cols(.name_repair = "universal_quiet")
}
