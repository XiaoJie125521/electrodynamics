% 电动力学讲义/教材 LaTeX 类
% 使用 XeLaTeX 或 LuaLaTeX 编译。
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{electrodynamicsbook}[2026/05/28 Electrodynamics Chinese book class]

\newif\ifed@founderfonts
\ed@founderfontsfalse
\DeclareOption{founderfonts}{\ed@founderfontstrue}
\ProcessOptions\relax

\LoadClass[openany,twoside,scheme=chinese,fontset=none]{ctexbook}

% 页面与基础排版
\RequirePackage{geometry}
\geometry{
  paperheight=260mm,
  paperwidth=185mm,
  top=25mm,
  bottom=15mm,
  left=20mm,
  right=20mm,
  headheight=15pt,
  headsep=8mm
}

\RequirePackage{indentfirst}
\RequirePackage{enumitem}
\setlength{\parindent}{2em}
\setlength{\parskip}{0pt}
\setlist{nosep,leftmargin=2em}

% 字体设置
\RequirePackage{fontspec}
\IfFontExistsTF{Times New Roman}
  {\setmainfont{Times New Roman}}
  {\setmainfont{TeX Gyre Termes}}
\setsansfont{TeX Gyre Heros}
\setmonofont{lmmono10-regular.otf}[Scale=MatchLowercase]

\ifed@founderfonts
  \IfFontExistsTF{XITS}{\setmainfont{XITS}}{}
  \IfFontExistsTF{Source Sans 3}{\setsansfont{Source Sans 3}}{}
  \IfFontExistsTF{Fira Code}{\setmonofont{Fira Code}[Scale=MatchLowercase]}{}
  \setCJKmainfont{FZShuSong-Z01}[
    BoldFont=Source Han Serif SC Bold,
    ItalicFont=FZKai-Z03
  ]
  \setCJKsansfont{FZHei-B01}[
    BoldFont=Source Han Sans SC Bold
  ]
  \setCJKmonofont{FZFangSong-Z02}
  \setCJKfamilyfont{zhsong}{FZShuSong-Z01}
  \setCJKfamilyfont{zhxbs}{Source Han Serif SC Bold}
  \setCJKfamilyfont{zhdbs}{Source Han Serif SC Heavy}
  \setCJKfamilyfont{zhhei}{FZHei-B01}
  \setCJKfamilyfont{zhdh}{Source Han Sans SC Bold}
  \setCJKfamilyfont{zhfs}{FZFangSong-Z02}
  \setCJKfamilyfont{zhkai}{FZKai-Z03}
\else
  \IfFontExistsTF{Source Han Serif SC}{
    \setCJKmainfont{Source Han Serif SC}[
      BoldFont=Source Han Serif SC Bold,
      ItalicFont=FandolKai-Regular.otf
    ]
    \setCJKfamilyfont{zhsong}{Source Han Serif SC}
    \setCJKfamilyfont{zhxbs}{Source Han Serif SC Bold}
    \setCJKfamilyfont{zhdbs}{Source Han Serif SC Heavy}
  }{
    \setCJKmainfont{FandolSong-Regular.otf}[
      BoldFont=FandolSong-Bold.otf,
      ItalicFont=FandolKai-Regular.otf
    ]
    \setCJKfamilyfont{zhsong}{FandolSong-Regular.otf}
    \setCJKfamilyfont{zhxbs}{FandolSong-Bold.otf}
    \setCJKfamilyfont{zhdbs}{FandolSong-Bold.otf}
  }
  \setCJKsansfont{FandolHei-Regular.otf}[
    BoldFont=FandolHei-Bold.otf
  ]
  \setCJKmonofont{FandolFang-Regular.otf}
  \setCJKfamilyfont{zhhei}{FandolHei-Regular.otf}[BoldFont=FandolHei-Bold.otf]
  \setCJKfamilyfont{zhdh}{FandolHei-Bold.otf}
  \setCJKfamilyfont{zhfs}{FandolFang-Regular.otf}
  \setCJKfamilyfont{zhkai}{FandolKai-Regular.otf}
\fi

\providecommand{\songti}{}
\providecommand{\xbsong}{}
\providecommand{\dbsong}{}
\providecommand{\heiti}{}
\providecommand{\dahei}{}
\providecommand{\fangsong}{}
\providecommand{\kaishu}{}
\renewcommand{\songti}{\CJKfamily{zhsong}}
\renewcommand{\xbsong}{\CJKfamily{zhxbs}}
\renewcommand{\dbsong}{\CJKfamily{zhdbs}}
\renewcommand{\heiti}{\CJKfamily{zhhei}}
\renewcommand{\dahei}{\CJKfamily{zhdh}}
\renewcommand{\fangsong}{\CJKfamily{zhfs}}
\renewcommand{\kaishu}{\CJKfamily{zhkai}}

% 数学与物理常用包
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{mathtools}
\RequirePackage{unicode-math}
\setmathfont{latinmodern-math.otf}
\newcommand{\bm}[1]{\symbfit{#1}}
\makeatletter
\newcommand{\ed@hbar}[1]{%
  \begingroup
  \sbox0{$#1 h$}%
  \dimen0=.75\ht0%
  \ooalign{%
    $#1 h$\cr
    \hidewidth\raise\dimen0\hbox{\rule{.55\wd0}{.045em}}\hidewidth\cr
  }%
  \endgroup
}
\renewcommand{\hbar}{%
  \mathord{\mathchoice
    {\ed@hbar\displaystyle}
    {\ed@hbar\textstyle}
    {\ed@hbar\scriptstyle}
    {\ed@hbar\scriptscriptstyle}}%
}
\makeatother
\RequirePackage{amsthm}
\RequirePackage{mathrsfs}
\DeclareFontFamily{U}{rsfs}{\skewchar\font127 }
\DeclareFontShape{U}{rsfs}{m}{n}{%
  <-6> rsfs5
  <6-8> rsfs7
  <8-> rsfs10
}{}
\RequirePackage{esint}
\RequirePackage{empheq}
\RequirePackage{cases}
\RequirePackage{extarrows}
\RequirePackage{cancel}
\RequirePackage{tensor}
\RequirePackage[
  bodytextleadingratio=1.6,
  footnoteleadingratio=1.5,
  restoremathleading=true
]{zhlineskip}
\allowdisplaybreaks[2]
\numberwithin{equation}{chapter}

% 全局增大矩阵与表格的行高
\renewcommand{\arraystretch}{1.5}

% 图表
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage{wrapfig}
\RequirePackage{booktabs}
\RequirePackage{tabularray}
\UseTblrLibrary{siunitx}
\UseTblrLibrary{booktabs}
\RequirePackage{caption}
\captionsetup{
  font=small,
  labelfont=bf,
  labelsep=quad
}

% 链接与交叉引用
\RequirePackage{xcolor}
\definecolor{edCoverGray}{gray}{0.35}
\definecolor{edCoverLight}{gray}{0.72}
\RequirePackage[most]{tcolorbox}
\tcbset{
  edexample/.style={
    enhanced,
    breakable,
    colback=white,
    colframe=black,
    coltitle=black,
    colbacktitle=white,
    fonttitle=\heiti,
    boxrule=0.45pt,
    arc=1pt,
    left=1em,
    right=1em,
    top=0.8em,
    bottom=0.8em,
    before skip=0.9em,
    after skip=0.9em,
    attach boxed title to top left={xshift=1em,yshift*=-\tcboxedtitleheight/2},
    boxed title style={
      colback=white,
      colframe=black,
      boxrule=0.45pt,
      arc=1pt,
      left=0.6em,
      right=0.6em,
      top=0.2em,
      bottom=0.2em
    }
  }
}
\RequirePackage[
  unicode,
  bookmarksnumbered=true,
  hidelinks
]{hyperref}
\RequirePackage[nameinlink,noabbrev]{cleveref}
\crefname{chapter}{章}{章}
\crefname{section}{节}{节}
\crefname{equation}{式}{式}
\crefname{figure}{图}{图}
\crefname{table}{表}{表}

% 章节样式
\newsavebox{\edcenterlabelbox}
\newsavebox{\edcenterrefbox}
\DeclareRobustCommand{\edcenterlabel}[1]{%
  \texorpdfstring{%
    \sbox{\edcenterrefbox}{中}%
    \sbox{\edcenterlabelbox}{#1}%
    \raisebox{%
      \dimexpr(\ht\edcenterrefbox-\dp\edcenterrefbox-\ht\edcenterlabelbox+\dp\edcenterlabelbox)/2 - .03em\relax
    }[\ht\edcenterrefbox][\dp\edcenterrefbox]{\usebox{\edcenterlabelbox}}%
  }{#1}%
}
\DeclareRobustCommand{\edcenternumber}[1]{%
  \texorpdfstring{%
    \sbox{\edcenterrefbox}{中}%
    \sbox{\edcenterlabelbox}{#1}%
    \raisebox{%
      \dimexpr(\ht\edcenterrefbox-\dp\edcenterrefbox-\ht\edcenterlabelbox+\dp\edcenterlabelbox)/2 - .05em\relax
    }[\ht\edcenterrefbox][\dp\edcenterrefbox]{\usebox{\edcenterlabelbox}}%
  }{#1}%
}
\DeclareRobustCommand{\edcentersubnumber}[1]{%
  \texorpdfstring{%
    \sbox{\edcenterrefbox}{中}%
    \sbox{\edcenterlabelbox}{#1}%
    \raisebox{%
      \dimexpr(\ht\edcenterrefbox-\dp\edcenterrefbox-\ht\edcenterlabelbox+\dp\edcenterlabelbox)/2 - .03em\relax
    }[\ht\edcenterrefbox][\dp\edcenterrefbox]{\usebox{\edcenterlabelbox}}%
  }{#1}%
}
\ctexset{
	chapter={
		format=\zihao{-2}\heiti\raggedright,
		name={第,章},
		number=\chinese{chapter},
		aftername=\par,
		aftertitle=\par\vspace{0.5em}\rule{\linewidth}{1pt},
		beforeskip=1em,
		afterskip=2em
	},
	section={
		format=\zihao{4}\xbsong\raggedright,
		number={\bfseries\protect\edcenterlabel{\S}~\protect\edcenternumber{\arabic{section}}},
		aftername={\hspace{0.5em}}, % <--- 新增：将间距强行指定为 0.5em（大约半个汉字宽）
		beforeskip=1.2em,
		afterskip=1em
	},
	subsection={
		format=\zihao{-4}\heiti\raggedright,
		number={\bfseries\protect\edcenternumber{\arabic{section}.\arabic{subsection}}},
		aftername={\hspace{0.5em}}, % <--- 新增：同样限制为 0.5em
		beforeskip=1.1em,
		afterskip=0.65em
	}
}

% 页眉页脚
\RequirePackage{fancyhdr}
\fancypagestyle{heading}{
  \fancyhf{}
  \fancyhead[CO]{\zihao{-5}\nouppercase{\rightmark}}
  \fancyhead[CE]{\zihao{-5}\nouppercase{\leftmark}}
  \fancyhead[RO,LE]{\zihao{-5}$\cdot$~\thepage~$\cdot$}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{plain}{
  \fancyhf{}
  \fancyhead[RO,LE]{\zihao{-5}\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{heading}
\renewcommand{\chaptermark}[1]{\markboth{第\chinese{chapter}章\quad #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\S\arabic{section}\quad #1}}

% 目录
\RequirePackage{tocloft}
\renewcommand{\cftchapfont}{\heiti}
\renewcommand{\cftchappagefont}{\heiti}
\setlength{\cftbeforechapskip}{0.6em}
\setlength{\cftbeforesecskip}{0.2em}
\addtolength{\cftsecnumwidth}{-0.5em}
\addtolength{\cftsubsecnumwidth}{-1.4em}

% 封面
\makeatletter
\newcommand{\ed@subtitle}{}
\newcommand{\ed@covernote}{经典电动力学课程讲义}
\newcommand{\subtitle}[1]{\gdef\ed@subtitle{#1}}
\newcommand{\covernote}[1]{\gdef\ed@covernote{#1}}

\renewcommand{\maketitle}{%
  \begin{titlepage}
    \thispagestyle{empty}
    \centering
    \vspace*{1.2cm}
    {\zihao{-5}\heiti \ed@covernote\par}
    \vspace{0.9cm}
    \rule{0.58\textwidth}{0.8pt}\par
    \vspace{2.4cm}
    {\zihao{0}\heiti\bfseries \@title\par}
    \if\relax\detokenize\expandafter{\ed@subtitle}\relax
    \else
      \vspace{0.55cm}
      {\zihao{3}\kaishu \ed@subtitle\par}
    \fi
    \vspace{1.8cm}
    {\color{edCoverLight}\Large
      \begin{minipage}{0.78\textwidth}
        \begin{align*}
          \nabla\!\cdot\Efield &= \frac{\rho}{\varepsilon_0},&
          \nabla\!\cdot\Bfield &= 0,\\
          \nabla\!\times\Efield &= -\,\pdv{\Bfield}{t},&
          \nabla\!\times\Bfield &= \mu_0\Jfield+\mu_0\varepsilon_0\pdv{\Efield}{t}.
        \end{align*}
      \end{minipage}\par}
    \vfill
    \rule{0.58\textwidth}{0.4pt}\par
    \vspace{0.8cm}
    {\zihao{4}\heiti \@author\par}
    \vspace{0.35cm}
    {\zihao{-4}\color{edCoverGray}\@date\par}
    \vspace*{1.1cm}
  \end{titlepage}
  \cleardoublepage
}
\makeatother

% 定理、例题与习题环境
\newcounter{edstatement}[chapter]
\renewcommand{\theedstatement}{\thechapter.\arabic{edstatement}}

\NewDocumentEnvironment{definition}{m m}{%
  \refstepcounter{edstatement}
  \par\medskip\noindent{\heiti 定义~\edcentersubnumber{\theedstatement}\quad #1}\label{def:#2}\par\smallskip
  \noindent\ignorespaces
}{\par\medskip}

\NewDocumentEnvironment{theorem}{m m}{%
  \refstepcounter{edstatement}
  \par\medskip\noindent{\heiti 定理~\edcentersubnumber{\theedstatement}\quad #1}\label{thm:#2}\par\smallskip
  \noindent\ignorespaces
}{\par\medskip}

\NewDocumentEnvironment{example}{m m}{%
  \refstepcounter{edstatement}
  \begin{tcolorbox}[edexample,title={例~\edcentersubnumber{\theedstatement}\quad #1}]
  \label{ex:#2}%
  \ignorespaces
}{%
  \end{tcolorbox}%
}

\NewDocumentEnvironment{remarkbox}{O{说明}}{%
  \par\medskip\noindent{\heiti 说明}\quad\ignorespaces
}{\par\medskip}

\newenvironment{solution}{%
  \par\noindent{\heiti 解}\quad\kaishu
}{\par}

\newcounter{exercise}[chapter]
\renewcommand{\theexercise}{\thechapter.\arabic{exercise}}
\NewDocumentEnvironment{exercise}{m m}{%
  \refstepcounter{exercise}
  \par\medskip\noindent{\heiti 习题~\edcentersubnumber{\theexercise}\quad #1}\label{exr:#2}\quad
}{\par\medskip}

% 电动力学常用记号
\newcommand{\dif}{\mathop{}\!\mathrm{d}}
\newcommand{\dd}{\dif}
\newcommand{\ee}{\mathrm{e}}
\newcommand{\ii}{\mathrm{i}}
\newcommand{\eps}{\varepsilon}
\newcommand{\epszero}{\varepsilon_0}
\newcommand{\muzero}{\mu_0}
\newcommand{\vb}[1]{\bm{#1}}
\newcommand{\uv}[1]{\hat{\vb{#1}}}
\newcommand{\grad}{\nabla}
\newcommand{\divergence}{\nabla\!\cdot}
\newcommand{\curl}{\nabla\!\times}
\newcommand{\laplacian}{\nabla^2}
\newcommand{\pdv}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\dv}[2]{\frac{\dif #1}{\dif #2}}
\newcommand{\abs}[1]{\left\lvert#1\right\rvert}
\newcommand{\norm}[1]{\left\lVert#1\right\rVert}
\newcommand{\avg}[1]{\left\langle#1\right\rangle}
\newcommand{\comm}[2]{\left[#1,#2\right]}
\newcommand{\acomm}[2]{\left\{#1,#2\right\}}
\newcommand{\evalat}[2]{\left.#1\right|_{#2}}
\newcommand{\order}[1]{\mathcal{O}\!\left(#1\right)}
\newcommand{\Efield}{\vb{E}}
\newcommand{\Bfield}{\vb{B}}
\newcommand{\Dfield}{\vb{D}}
\newcommand{\Hfield}{\vb{H}}
\newcommand{\Jfield}{\vb{J}}
\newcommand{\Afield}{\vb{A}}
\providecommand{\unit}[1]{\,\mathrm{#1}}

\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\tr}{tr}
\DeclareMathOperator{\Real}{Re}
\DeclareMathOperator{\Imag}{Im}
\DeclareMathOperator{\Res}{Res}

% 常用页面结构
\newcommand{\lecturetitle}[2]{%
  \chapter{#1}
  \par\noindent{\heiti 本章要点}\quad #2\par\medskip
}

\AtBeginDocument{%
  \hypersetup{pdftitle={电动力学讲义}}
}

\endinput
