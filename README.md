# R Markdown 同时生成 HTML 和 PPTX

1. 用 RStudio 打开 R-Markdown-PPT.Rproj。
2. 首次执行 source("setup.R") 安装依赖，需要联网。
3. 编辑 slides.Rmd，每个 ## 标题对应 PPT 中的一张幻灯片。
4. 执行 source("render.R")，一次生成以下两个文件：
   - output/slides.html：可逐页播放的 ioslides HTML 幻灯片。
   - output/slides.pptx：PowerPoint 演示文稿。

slides.Rmd 的 YAML 同时配置 ioslides_presentation 和 powerpoint_presentation。
render.R 使用 output_format="all" 生成所有配置的格式。
RStudio 的 Knit 默认生成第一种格式（HTML），也可在下拉菜单中选择 PowerPoint；
要一次生成两种格式，请运行 source("render.R")。
RStudio 通常自带 Pandoc。文字与表格可在 PPT 中编辑，R 图表以图片形式插入。

HTML 幻灯片可在浏览器中打开，用方向键翻页。
示例中的 HTML 标签与 CSS 样式（如 span、div、.smaller）主要适用于 HTML，PPTX 不一定保留相同效果。跨格式图片建议使用 Markdown 图片语法或 knitr::include_graphics()。


## 在线分享

output 文件夹已纳入版本管理。每次修改后先运行 source("render.R")，再提交并推送生成文件。

首次发布：仓库 Settings → Pages → Deploy from a branch，选择 main 和 /(root)，点击 Save。
发布成功后：
- 在线播放：https://a-phantomhive.github.io/Presentations/
- 下载 PPTX：https://a-phantomhive.github.io/Presentations/output/slides.pptx

在线版本采用 HTML 排版；PPTX 不会继承 HTML 的 CSS 样式。
