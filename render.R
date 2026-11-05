# 在 RStudio 中打开项目，再运行 source("render.R")。
# 同时生成 HTML 幻灯片与 PowerPoint。
if (!requireNamespace("rmarkdown", quietly = TRUE) ||
    !requireNamespace("knitr", quietly = TRUE)) {
  stop("请先运行 source('setup.R') 安装依赖。")
}
if (!rmarkdown::pandoc_available()) {
  stop("未找到 Pandoc，请在 RStudio 中运行，或安装 Pandoc。")
}
if (!file.exists("slides.Rmd")) {
  stop("未找到 slides.Rmd，请先打开 R-Markdown-PPT.Rproj。")
}

dir.create("output", showWarnings = FALSE)

# all 表示生成 slides.Rmd 的 YAML 中配置的所有输出格式。
rmarkdown::render(
  input = "slides.Rmd",
  output_format = "all",
  output_dir = "output",
  encoding = "UTF-8"
)



