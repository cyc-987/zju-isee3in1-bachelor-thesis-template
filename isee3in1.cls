\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{isee3in1}[2025/12/01 ZJU ISEE 3-in-1 report class]
%-----------------------------------------------------------------
% load class options
%-----------------------------------------------------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax
\LoadClass{ctexart}
%-----------------------------------------------------------------
% import packages
%-----------------------------------------------------------------
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{setspace}
\RequirePackage{calc}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{subfigure}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{multirow}
\RequirePackage{array}
\RequirePackage{enumerate}
\RequirePackage{enumitem}
\RequirePackage{caption}
\RequirePackage{amsmath}
\RequirePackage{indentfirst}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{chapterbib}
\RequirePackage{gbt7714}
\RequirePackage{fontspec}
%-----------------------------------------------------------------
% format settings
%-----------------------------------------------------------------
% 页边距
\geometry{top=25.4mm,bottom=25.4mm,left=31.7mm,right=31.7mm}
% 首行缩进
\setlength{\parindent}{2em}
% 全局行距1.5
\onehalfspacing
% 字体族
\setmainfont{Times New Roman}
% \defaultfontfeatures{Path=assets/fonts/}
\setCJKmainfont[Path=assets/fonts/, AutoFakeBold={6}, AutoFakeSlant=0.2]{STFangsong.ttf} % 主要字体为华文仿宋
\setCJKfamilyfont{simhei}{SimHei.ttf}[Path=assets/fonts/, AutoFakeBold={4}, AutoFakeSlant=0.2] % 黑体family
\setCJKfamilyfont{simsun}{SimSun.ttc}[Path=assets/fonts/, AutoFakeBold={4}, AutoFakeSlant=0.2] % 宋体family
% 图表设定
\renewcommand{\thetable}{\arabic{subsection}.\arabic{table}}
\renewcommand{\figurename}{\ptheadingfont{图}}
\renewcommand{\tablename}{\ptheadingfont{表}}
\RequirePackage[colorlinks=true,linkcolor=black,citecolor=black,CJKbookmarks=true]{hyperref}
% 公式设定
\numberwithin{equation}{subsection} % 将公式编号与章节关联
\numberwithin{figure}{subsection} % 图的编号与章节关联
\numberwithin{table}{subsection}  % 表的编号与章节关联
% 设置 enumerate 的编号格式为 (1)
\renewcommand{\theenumi}{(\arabic{enumi})}
\renewcommand{\labelenumi}{\theenumi}
%-----------------------------------------------------------------
% Syntactic sugar
%-----------------------------------------------------------------
% 常用字体
\newcommand{\mainfont}[1]{{\fontsize{12bp}{18bp}\selectfont{#1}}} % 正文：小四12磅仿宋1.5行距
\newcommand{\ptheadingfont}[1]{{\CJKfamily{simsun}\fontsize{10.5bp} {15.75bp}\selectfont\bfseries{#1}}} % 图表标题：五号宋体10.5磅加粗1.5行距
\newcommand{\ptmainfont}[1]{{\CJKfamily{simsun}\fontsize{10.5bp}{10.5bp}\selectfont{#1}}} % 图表正文：五号宋体10.5磅1行距
\newcommand{\headfont}[1]{{\CJKfamily{simsun}\fontsize{9bp}{9bp}\selectfont{#1}}}
\newcommand{\footfont}[1]{{\fontsize{9bp}{9bp}\selectfont{#1}}}
% 占位符
\newcommand{\bullshit}{{
尝试写一点正文，用于测试。尝试写一点正文，用于测试。尝试写一点正文，用于测试。尝试写一点正文，用于测试。尝试写一点正文，用于测试。尝试写一点正文，用于测试。尝试写一点正文，用于测试。

Test content. Test content. Test content. Test content. Test content. Test content. Test content. Test content. Test content. Test content. Test content. 
}}
%-----------------------------------------------------------------
% head&foot settings
%-----------------------------------------------------------------
% 设置自定义页眉页脚样式
\fancypagestyle{infoPage}{
    \fancyhf{}
    \fancyhead[R]{\headfont \ProjectName}
    \fancyfoot{} 
}
\fancypagestyle{indexPage}{
    \fancyhf{}
	\setcounter{page}{1}\pagenumbering{Roman}
	\fancyhead[RO]{\headfont \ProjectName}
    \fancyhead[LE]{\headfont{浙江大学本科生毕业论文（设计）}}
	\fancyfoot[C]{\footfont \thepage}
}
\fancypagestyle{mainPage}{
    \fancyhf{}
	\setcounter{page}{1}\pagenumbering{arabic}
	\fancyhead[RO]{\headfont \ProjectName}
	\fancyhead[LE]{\headfont{浙江大学本科生毕业论文（设计）}}
    \fancyfoot[C]{\footfont \thepage}
}
%-----------------------------------------------------------------
% heading settings
%-----------------------------------------------------------------
% 多级标题设置
\setcounter{secnumdepth}{4}
\titleformat{\section}[block]{\centering\zihao{3}\bfseries}{\chinese{section}、}{0pt}{}
\titleformat{\subsection}[block]{\zihao{-3}\bfseries}{\arabic{subsection}}{0.5em}{}
\titleformat{\subsubsection}[block]{\zihao{4}\bfseries}{\arabic{subsection}.\arabic{subsubsection}}{0.5em}{}
\titleformat{\paragraph}{\zihao{4}\bfseries}{\arabic{subsection}.\arabic{subsubsection}.\arabic{paragraph}}{0.5em}{}
% 设置段间距
\titlespacing{\section}{0pt}{8bp}{8bp}
\titlespacing{\subsection}{0pt}{8bp}{8bp}
\titlespacing{\subsubsection}{0pt}{7.5bp}{7.5bp}
\titlespacing{\paragraph}{0pt}{7bp}{7bp}
%-----------------------------------------------------------------
% content settings
%-----------------------------------------------------------------
\renewcommand{\contentsname}{\fontsize{16bp}{32bp}\bfseries\centering 目录} 
\setcounter{tocdepth}{3}
\renewcommand{\thesection}{\CJKfamily{simhei}\chinese{section}、}
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsection}.\arabic{subsubsection}}
\renewcommand{\theparagraph}{\arabic{subsection}.\arabic{subsubsection}.\arabic{paragraph}}
\titlecontents{section}[2em]{\CJKfamily{simhei}\bfseries\fontsize{12bp}{18bp}}{\contentslabel{2em}}{}{\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsection}[2.5em]{\fontsize{12bp}{18bp}}{\contentslabel{1em}}{}{\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsubsection}[4.5em]{\fontsize{12bp}{18bp}}{\contentslabel{1.83em}}{}{\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{paragraph}[5.5em]{\fontsize{12bp}{18bp}}{\contentslabel{2.67em}}{}{\titlerule*[0.5pc]{$\cdot$}\contentspage}
%-----------------------------------------------------------------
% cover
%-----------------------------------------------------------------
\newcommand{\makecover}{
    \thispagestyle{empty}
    \vspace*{12bp}
    % 浙江大学
    \begin{center}
        \includegraphics[width=0.8\textwidth]{assets/figs/heading.png}
    \end{center}
    \vspace{17bp}
    % 标题
    \begin{center}
        {\CJKfamily{simhei}\fontsize{24bp}{20pt}\selectfont\bfseries 
            本\hspace{0.6em}科\hspace{0.6em}生\hspace{0.6em}毕\hspace{0.6em}业\hspace{0.6em}论\hspace{0.6em}文（设计） } \\[37bp]
        {\CJKfamily{simhei}\fontsize{24bp}{20pt}\selectfont\bfseries 
            文献综述和开题报告 }
    \end{center}
    \vspace{38bp}
    % logo
    \begin{center}
        \includegraphics[width=0.22\textwidth]{assets/figs/logo.png}
    \end{center}
    \vspace{48bp}
    % 个人信息
    \newcommand{\infotext}[1]{{\fontsize{16bp}{20pt}\selectfont\bfseries {##1}}}
    \newlength{\tempwidth}
    \settowidth{\tempwidth}{\infotext{字字字字字字}}
    \begin{center}
        \makebox[\tempwidth][l]{\infotext{姓名与学号}}\underline{\makebox[7cm][c]{\infotext{\StudentName\ \StudentID}}} \\[28bp]
        \makebox[\tempwidth][l]{\infotext{指导教师}}\underline{\makebox[7cm][c]{\infotext{\Supervisor}}} \\[28bp]
        \makebox[\tempwidth][l]{\infotext{年级与专业}}\underline{\makebox[7cm][c]{\infotext{\Grade\ \Major}}} \\[28bp]
        \makebox[\tempwidth][l]{\infotext{所在学院}}\underline{\makebox[7cm][c]{\infotext{\College}}} \\
    \end{center}
    \clearpage
}