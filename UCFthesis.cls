% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UCFthesis}[2011/08/05 UCF Thesis or Dissertation]

% Preliminary declarations

% Options

% More declarations
\LoadClassWithOptions{report}

% Default font size
\renewcommand{\normalsize}{\fontsize{12}{12}\selectfont}

\RequirePackage{graphicx}

% Need to load babel here. Otherwise it will override the titles set below
% for the table of contents and bibliography
\RequirePackage{babel}
\addto\captionsenglish{
  \renewcommand{\contentsname}{TABLE OF CONTENTS}
  \renewcommand{\bibname}{LIST OF REFERENCES}
}

% Margins
\RequirePackage[top=1in, bottom=1in, left=1in, right=1in, includefoot]{geometry}

% Set up double spacing
\newcommand{\doublestretch}{2.3}    % "Fudge factor" to match MS Word
\RequirePackage{setspace}

% Format titles and headings
% \titleformat{command} [shape] {format} {label} {sep} {before} {after}
\RequirePackage{titlesec}
\titleformat{\chapter} [block] {\centering \singlespacing \normalfont} 
	{\MakeUppercase{\chaptertitlename} \thechapter.} 
	{1ex} {\MakeUppercase} {\setstretch{\doublestretch}}
\titleformat{\section} [block] {\centering  \singlespacing \normalfont} {} 
	{1ex} {} {\setstretch{\doublestretch}}
\titleformat{\subsection} [block] {\centering \singlespacing \itshape} {} 
	{1ex} {} {\setstretch{\doublestretch}}
\titleformat{\subsubsection} [block] {\raggedright \singlespacing \itshape} {} 
	{1ex} {} {\setstretch{\doublestretch}}
\setcounter{secnumdepth}{0}	% Don't print section numbers

% Format table of contents, list of figures, and list of tables

\RequirePackage[titles]{tocloft}
\setcounter{tocdepth}{4}
\RequirePackage{calc}   % Used to multiply baselineskip

% Table of Contents
\setlength{\cftbeforechapskip}{0pt}
\renewcommand{\cfttoctitlefont}{\hfill\Large\MakeUppercase}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cftchappresnum}{\MakeUppercase{Chapter }}
\renewcommand{\cftchapaftersnum}{. }
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}

\newlength{\chaplen}	% a "scratch" length 
\settowidth{\chaplen}{\MakeUppercase{\cftchappresnum\cftchapaftersnum}} % measure space
\addtolength{\cftchapnumwidth}{\chaplen} % add the extra space

% List of Figures
\setlength{\cftbeforefigskip}{\baselineskip*\real{0.0}} % 1.3
\renewcommand{\cftloftitlefont}{\hfill\Large\MakeUppercase}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\listfigurename}{List of figures}
\renewcommand{\cftfigfont}{\normalfont}
\renewcommand{\cftfigpagefont}{\normalfont}
\renewcommand{\cftfigpresnum}{Figure }
\renewcommand{\cftfigaftersnum}{: }
\renewcommand{\cftfigleader}{\cftdotfill{\cftdotsep}}

\newlength{\figlen}	% a "scratch" length 
\settowidth{\figlen}{\cftfigpresnum\cftfigaftersnum} % measure space
\addtolength{\cftfignumwidth}{\figlen} % add the extra space

% List of Tables
\setlength{\cftbeforetabskip}{\baselineskip*\real{0.0}} % 1.3
\renewcommand{\cftlottitlefont}{\hfill\Large\MakeUppercase}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\listtablename}{List of tables}
\renewcommand{\cfttabfont}{\normalfont}
\renewcommand{\cfttabpagefont}{\normalfont}
\renewcommand{\cfttabpresnum}{Table }
\renewcommand{\cfttabaftersnum}{: }
\renewcommand{\cfttableader}{\cftdotfill{\cftdotsep}}

\newlength{\tablen}	% a "scratch" length 
\settowidth{\tablen}{\cfttabpresnum\cfttabaftersnum} % measure space
\addtolength{\cfttabnumwidth}{\tablen} % add the extra space

%% Format entries in TOC, List of Figures, and List of Tables
%\RequirePackage{titletoc}
%
%% \titlecontents{type} [left] {above}
%% {before with label} 
%% {before wo label} {filler and page} [after]
%
%\titlecontents{chapter} [0em] {\normalfont}
%{\MakeUppercase{Chapter } \thecontentslabel. \uppercase}
%{\uppercase} {\titlerule*[1pc]{.} \contentspage} []
%
%\titlecontents{section} [0em] {\normalfont} 
%{\thecontentslabel. }
%{\hspace*{2.3em}} {\titlerule*[1pc]{.} \contentspage} []
%
%\titlecontents{subsection} [0em] {\normalfont} 
%{\thecontentslabel. }
%{\hspace*{4.6em}} {\titlerule*[1pc]{.} \contentspage} []

% Captions
\RequirePackage[format=plain, labelformat=simple, font=normalsize]{caption}
\captionsetup[table]{justification=raggedright, singlelinecheck=false}
\captionsetup[figure]{justification=raggedright, singlelinecheck=false}

% Subfigures
\RequirePackage{subfig}

% Hyperlinks, including PDF bookmarks
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{bookmark}

% Title page commands
\renewcommand{\title}[1]{\newcommand{\printtitle}{\MakeUppercase{#1}}}
\renewcommand{\author}[1]{\newcommand{\printauthor}{\MakeUppercase{#1}}}
\newcommand{\priordegrees}[1]{\newcommand{\printpriordegrees}{#1}}
\newcommand{\degree}[1]{\newcommand{\printdegree}{#1}}
\newcommand{\department}[1]{\newcommand{\printdepartment}{#1}}
\newcommand{\college}[1]{\newcommand{\printcollege}{#1}}
\newcommand{\term}[1]{\newcommand{\printterm}{#1}}
\newcommand{\advisor}[1]{\newcommand{\printadvisor}{#1}}

\renewcommand{\maketitle} {
\newgeometry{top=2.0in, bottom=1in, left=1in, right=1in}
\thispagestyle{empty}
\singlespacing
\begin{center}
\printtitle \\
\vspace{1.0 in}
by \\
\vspace{1.0 in}
\printauthor \\
\printpriordegrees \\
\vspace{0.75 in}
A dissertation submitted in partial fulfillment of the requirements \\
for the degree of \printdegree \\
in \printdepartment \\
in the \printcollege \\
at the University of Central Florida \\
Orlando, Florida\\
\vspace{1 in}
\printterm \\
\vspace{1 in}
Major Professor: \printadvisor
\end{center}
\restoregeometry
}

% Special environments
\newenvironment{UCFcopyright}
{\newpage
\setcounter{page}{2}
\thispagestyle{plain}
\vspace*{\fill}
\begin{center}
\normalfont
\copyright
} {\end{center} \vspace*{\fill}}

\renewenvironment{abstract}
{\newpage
\thispagestyle{plain}
\begin{center}
\vspace*{1.5cm}
\bookmark[level=0, dest=abstract_label]{ABSTRACT}
\hypertarget{abstract_label}{ABSTRACT}
\end{center}
\vspace{0.5cm}
} {}

\newenvironment{acknowledgments}
{\newpage
\thispagestyle{plain}
\begin{center}
\vspace*{1.5cm}
\bookmark[level=0, dest=ack_label]{ACKNOWLEDGMENTS}
\hypertarget{ack_label}{ACKNOWLEDGMENTS}
\end{center}
\vspace{0.5cm}
} {}

\pagestyle{plain}
\setstretch{\doublestretch}
