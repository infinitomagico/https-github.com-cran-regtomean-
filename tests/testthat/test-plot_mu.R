library(testthat)
library(regtomean)

test_that("plot_mu for language_test", {
  
  invisible(capture.output({
    suppressMessages({
      mee_chua <- replicate_data(0, 100, "Before", "After", data=language_test, to_global = F)
      reslist <- meechua_reg(mee_chua, to_global = F)
      plot_mu_list <- plot_mu(reslist$mod_coef, 8, reslist$se_after)
    })
  }))
  
  expect_equal(round(plot_mu_list$t_opt, digits = 3), 1.938)
  expect_equal(round(plot_mu_list$p_min, digits = 3), 0.050)
  expect_equal(round(plot_mu_list$mu_max, digits = 2), 59.00)
  expect_true(is.infinite(plot_mu_list$mu_lower))
  expect_true(is.infinite(plot_mu_list$mu_upper))
})