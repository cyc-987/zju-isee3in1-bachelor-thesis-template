\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{isee3in1}[2025/12/21 ZJU ISEE 3-in-1 report class]
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
\RequirePackage[sort&compress]{gbt7714}
\RequirePackage{fontspec}
\RequirePackage{tabularx}
\RequirePackage{amssymb}
\RequirePackage{pdfpages}
\RequirePackage{xfp}
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
\setCJKmainfont[Path=assets/fonts/, AutoFakeBold={4.5}, AutoFakeSlant=0.2]{STFangsong.ttf} % 主要字体为华文仿宋
\setCJKfamilyfont{simhei}{SimHei.ttf}[Path=assets/fonts/, AutoFakeBold={4}, AutoFakeSlant=0.2] % 黑体family
\setCJKfamilyfont{simsun}{SimSun.ttc}[Path=assets/fonts/, AutoFakeBold={4}, AutoFakeSlant=0.2] % 宋体family
% 图表设定
\renewcommand{\thetable}{\arabic{subsection}.\arabic{table}}
\renewcommand{\figurename}{\ptheadingfont{图}}
\renewcommand{\tablename}{\ptheadingfont{表}}
\captionsetup{labelsep=space}
\DeclareCaptionFont{zjuCapBase}{\CJKfamily{simsun}\zihao{5}\setstretch{1.5}}
\captionsetup{
  font=zjuCapBase,      % 整体五号宋体 + 1.5 行距
  labelfont=bf,         % “图/表 + 编号”加粗
  textfont=normalfont,  % 标题正文不加粗
  labelsep=space,
  singlelinecheck=true  % 单行要保留居中
}
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
\newcommand{\setfont}[2]{\zihao{#1}\linespread{\fpeval{(#2)*1.625/1.5}}\selectfont}
% 常用字体
\newcommand{\mainfont}[1]{{\setfont{-4}{1.5}{#1}}} % 正文：小四12磅仿宋1.5行距
\newcommand{\globalmainfont}{\setfont{-4}{1.5}}
\newcommand{\ptheadingfont}[1]{{\CJKfamily{simsun}\setfont{5}{1.5}\bfseries{#1}}} % 图表标题：五号宋体10.5磅加粗1.5行距
\newcommand{\ptmainfont}[1]{{\CJKfamily{simsun}\setfont{5}{1}{#1}}} % 图表正文：五号宋体10.5磅1行距
\newcommand{\headfont}[1]{{\CJKfamily{simsun}\setfont{-5}{1}{#1}}}
\newcommand{\footfont}[1]{{\setfont{-5}{1}{#1}}}
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
\titleformat{\section}[block]{\centering\setfont{3}{1}\bfseries}{\chinese{section}、}{0pt}{}
\titleformat{\subsection}[block]{\setfont{3}{1}\bfseries}{\arabic{subsection}}{0.5em}{}
\titleformat{\subsubsection}[block]{\setfont{-3}{1}\bfseries}{\arabic{subsection}.\arabic{subsubsection}}{0.5em}{}
\titleformat{\paragraph}{\setfont{4}{1.5}\bfseries}{\arabic{subsection}.\arabic{subsubsection}.\arabic{paragraph}}{0.5em}{}
% 设置段间距
\titlespacing{\section}{0pt}{12pt}{6pt}
\titlespacing{\subsection}{0pt}{8bp}{8bp}
\titlespacing{\subsubsection}{0pt}{7.5bp}{7.5bp}
\titlespacing{\paragraph}{0pt}{0bp}{0bp}
%-----------------------------------------------------------------
% content settings
%-----------------------------------------------------------------
\renewcommand{\contentsname}{\setfont{3}{2}\bfseries\centering 目录} 
\setcounter{tocdepth}{3}
\renewcommand{\thesection}{\CJKfamily{simhei}\chinese{section}、}
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsection}.\arabic{subsubsection}}
\renewcommand{\theparagraph}{\arabic{subsection}.\arabic{subsubsection}.\arabic{paragraph}}
\titlecontents{section}[2em]{\CJKfamily{simhei}\bfseries\setfont{-4}{1.5}}{\contentslabel{2em}}{}{\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsection}[2.5em]{\setfont{-4}{1.5}}{\contentslabel{1em}}{}{\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsubsection}[4.5em]{\setfont{-4}{1.5}}{\contentslabel{1.83em}}{}{\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{paragraph}[5.5em]{\setfont{-4}{1.5}}{\contentslabel{2.67em}}{}{\titlerule*[0.5pc]{$\cdot$}\contentspage}
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
    \newcommand{\infotextnobf}[1]{{\fontsize{16bp}{20pt}\selectfont {##1}}}
    \newlength{\tempwidth}
    \settowidth{\tempwidth}{\infotext{字字字字字字}}
    \begin{center}
        \makebox[\tempwidth][l]{\infotext{姓名与学号}}\underline{\makebox[7cm][c]{\infotextnobf{\StudentName\ \StudentID}}} \\[28bp]
        \makebox[\tempwidth][l]{\infotext{指导教师}}\underline{\makebox[7cm][c]{\infotextnobf{\Supervisor}}} \\[28bp]
        \makebox[\tempwidth][l]{\infotext{年级与专业}}\underline{\makebox[7cm][c]{\infotextnobf{\Grade\ \Major}}} \\[28bp]
        \makebox[\tempwidth][l]{\infotext{所在学院}}\underline{\makebox[7cm][c]{\infotextnobf{\College}}} \\
    \end{center}
    \clearpage
}