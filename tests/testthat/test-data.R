describe("gordon atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(gordon(), "ggseg_atlas")
    expect_s3_class(gordon(), "cortical_atlas")
  })

  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(gordon()))
  })

  it("renders with ggseg", {
    vdiffr::expect_doppelganger(
      "gordon-2d",
      ggseg::brain_test_plot(gordon())
    )
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg.meshes")
    p <- ggseg3d::ggseg3d(atlas = gordon())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})
