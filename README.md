# 浙江大学信电学院本科“文献综述 + 开题报告 + 外文翻译”LaTeX 模板-2025版

一个包含封面、综述、开题报告、外文翻译与考核页的完整排版模板，基于自定义文档类 `isee3in1.cls`，适用于2025年学院最新格式。**适用于Overleaf**。

## 鸣谢
感谢前辈的仓库[ISEE_LaTeX_3in1](https://github.com/SuperbRa1n/ISEE_LaTeX_3in1)对我进行标题和目录格式的修改提供了参考和启发。

## 前排提示
- 本模板仅对Overleaf做了可编译保证，未在任何本地环境进行测试，如在本地环境编译此文件有任何问题，恕不提供解决方案。
- 尽管我尽力的模仿了学院提供的Word文件，但是由于Latex与前者本质上不采用一套渲染体系，无法保证完全一致。由使用本模板导致无法通过格式检查的情况本人恕不承担。

## 仓库结构
- `main.tex`：入口文件，填写学生/导师信息并按顺序引入各章节。
- `isee3in1.cls`：版式与字体定义。
- `contents/`：正文拆分文件  
  - `00_Info.tex`：开题要求填写页  
  - `01_Review.tex`：文献综述  
  - `02_Report.tex`：开题报告  
  - `03_Translate.tex`：外文翻译  
  - `04_TransOriginal.tex`：外文原文  
  - `05_Eval.tex`：成绩评定页
- `refs/01_Review.bib`, `refs/02_Report.bib`：各章节 BibTeX 参考文献。
- `figs/`：正文插图（示例在 `figs/01/`）。
- `assets/figs/`：封面图片与校徽；`assets/fonts/`：内置 SimSun、SimHei、STFangsong。

## 快速开始 
1. 下载本仓库压缩包，并上传至Overleaf。
1. 在 `main.tex` 顶部填写个人信息宏（姓名、学号、导师、年级、专业、学院、课题名）。  
1. 使用XeLatex引擎编译生成 PDF。

## 注意
- 模板已自带所需中文字体与校徽，无需额外安装字体。若替换字体，请同步修改 `isee3in1.cls` 中的 `\setCJKmainfont` 等定义。  
- 如果有任何问题欢迎提issue或者PR。

## 许可证
本项目基于 GPL-3.0 许可，详见 `LICENSE`。
