\ProvidesClass{zjureport}
\LoadClass{ctexart}
\RequirePackage{graphicx, xcolor, tikz}
\RequirePackage{geometry, titlesec, fancyhdr}
\RequirePackage{listings, cncolours}
\RequirePackage{indentfirst, enumitem, zhnumber}

% 设置版式
\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}

% 设置标题和字体格式
\setCJKmainfont[ItalicFont={KaiTi},BoldFont={SimHei}]{SimSun}
\setmonofont{DejaVu Sans Mono}
\setCJKfamilyfont{KaiTi}[AutoFakeBold=2.5]{KaiTi}

\setcounter{secnumdepth}{3}
\renewcommand\thesection{\zhnumber{\arabic{section}}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}
\setlist[enumerate,1]{label=(\arabic*)}
\setlist[enumerate,2]{label=\alph*.}
\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize}

% 代码格式和颜色定义
\colorlet{keyword}{松花绿}
\colorlet{comment}{漆黑!50}
\colorlet{emph1}{靛蓝}
\colorlet{emph2}{琥珀}
\lstset{
  frame=tb,
  framerule=0.5pt,
  numbers=none,
  breaklines=true,
  breakatwhitespace=true,
  keywordstyle = \bfseries\color{keyword},
  commentstyle = \itshape\color{comment},
  emphstyle    = [1]\itshape\color{emph1},
  emphstyle    = [2]\color{emph2},
  basicstyle   = {\small\ttfamily},
  backgroundcolor=\color{gray!10},
}

% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\newcommand\score[1]{\def\@score{#1}}
\newcommand\teacher[1]{\def\@teacher{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\TA[1]{\def\@TA{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\LABdate[1]{\def\@LABdate{#1}}
\newcommand\partner[1]{\def\@partner{#1}}
\graphicspath{{figures/}}


% 下划线定义
\def\zjuu[#1]#2{
  \underline{\hbox to #1{\hfil#2\hfil}}}

% 首页头部
\newcommand{\makeheader}{
\begin{figure}[h]
  \begin{minipage}{0.3\linewidth}
    \raggedright\includegraphics[width=0.8\linewidth]{浙江大学}
  \end{minipage}%
  \begin{minipage}{0.4\linewidth}
    \centerline{\fontsize{24}{30}\CJKfamily{KaiTi}{\textbf{\xeCJKsetup{CJKglue=\hskip 0.8pt}地球科学学院实验报告}}}
  \end{minipage}%
  \begin{minipage}{.3\linewidth}
    \raggedleft
    \begin{tabular*}{.8\linewidth}{l}
      专业:\zjuu[90pt]\@major   \\
      姓名:\zjuu[90pt]\@name    \\
      学号:\zjuu[90pt]\@stuid   \\
      成绩:\zjuu[90pt]\@score \\
      教师签字:\zjuu[70pt]\@teacher
    \end{tabular*}
  \end{minipage}
\end{figure}

\noindent\begin{tabular}{@{}l@{}p{100pt}@{}l@{}p{175pt}@{}l@{}p{65pt}@{}}
  课程名称: & \zjuu[100pt]\@course & 实验名称: & \zjuu[175pt]\@lab & 指导老师: & \zjuu[65pt]\@TA \\
\end{tabular}
  
\vspace{0.5em}
  
\noindent\begin{tabular}{@{}l@{}p{180pt}@{}l@{}p{130pt}@{}}
  实验人(组): & \zjuu[180pt]\@expname & 日期: & \zjuu[160pt]\@LABdate \\
\end{tabular}

}

\endinput
