describe("gordon atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(gordon(), "ggseg_atlas")
    expect_s3_class(gordon(), "cortical_atlas")
  })

  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(gordon()))
  })

  it("renders with ggseg", {
    skip_if_not_installed("ggseg")
    skip_if_not_installed("ggplot2")
    skip_if_not_installed("vdiffr")
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = gordon(),
        mapping = ggplot2::aes(fill = label),
        position = ggseg::position_brain(hemi ~ view),
        show.legend = FALSE
      ) +
      ggplot2::scale_fill_manual(values = gordon()$palette, na.value = "grey") +
      ggplot2::theme_void()
    vdiffr::expect_doppelganger("gordon-2d", p)
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg3d")
    p <- ggseg3d::ggseg3d(atlas = gordon())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})
