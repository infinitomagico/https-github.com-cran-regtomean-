library(testthat)
library(regtomean)

test_that("plot_t for language_test", {
  
  invisible(capture.output({
    suppressMessages({
      plot_t_list <- plot_t(mu_start = 0, mu_end = 100, n = 8 , y1_mean = 57.375, y2_mean = 60.375, y1_std = 7.0, y2_std = 8.8, cov = 54.268)
    })
  }))
  
  expect_equal(round(plot_t_list$t_opt, digits = 3), 1.938)
  expect_equal(round(plot_t_list$p_min, digits = 3), 0.050)
  expect_equal(round(plot_t_list$mu_max, digits = 2), 59.00)
  expect_true(is.infinite(plot_t_list$mu_lower))
  expect_true(is.infinite(plot_t_list$mu_upper))
})