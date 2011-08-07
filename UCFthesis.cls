% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UCFthesis}[2011/08/05 UCF Thesis or Dissertation]

% Preliminary declarations

% Options

% More declarations
\LoadClassWithOptions{report}

\RequirePackage{hyperref}
\RequirePackage{graphicx}

% Margins
\RequirePackage[top=1.25in, bottom=1in, left=1in, right=1in]{geometry}

% Format titles and headings
% \titleformat{command} [shape] {format} {label} {sep} {before} {after}
\RequirePackage{titlesec}
\titleformat{\chapter} [block] {\centering \normalfont} {\MakeUppercase{\chaptertitlename} \thechapter.} 
	{1ex} {\MakeUppercase} {}
\titleformat{\section} [block] {\centering \normalfont} {} 
	{1ex} {} {}
\titleformat{\subsection} [block] {\centering \itshape} {} 
	{1ex} {} {}
	\titleformat{\subsubsection} [block] {\raggedright \itshape} {} 
	{1ex} {} {}
\setcounter{secnumdepth}{0}	% Don't print section numbers

% Format titles of table of contents, list of figures, and list of tables
\RequirePackage[]{tocloft}

% Table of Contents
\renewcommand{\cfttoctitlefont}{\hfill\Large\MakeUppercase}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\cftchapfont}{\uppercase}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cftchappresnum}{\MakeUppercase{Chapter }}
\renewcommand{\cftchapaftersnum}{. }
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}

\newlength{\chaplen}	% a "scratch" length 
\settowidth{\chaplen}{\normalfont\cftchappresnum\cftchapaftersnum} % extra space
\addtolength{\cftchapnumwidth}{\chaplen} % add the extra space

% List of Figures
\renewcommand{\cftloftitlefont}{\hfill\Large\MakeUppercase}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\listfigurename}{List of figures}

% List of Tables
\renewcommand{\cftlottitlefont}{\hfill\Large\MakeUppercase}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\listtablename}{List of tables}

% Line spacing
\RequirePackage{setspace}
\doublespacing

% Default font size
\renewcommand{\normalsize}{\fontsize{12}{12}\selectfont}

% Captions
\RequirePackage[format=plain, labelformat=simple, font=normalsize]{caption}
\captionsetup[table]{justification=raggedright, singlelinecheck=false}

\RequirePackage{subfig}

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
\Large \MakeUppercase{Abstract}
\end{center}
\vspace{0.5cm}} {}

\newenvironment{acknowledgements}
{\newpage
\thispagestyle{plain}
\begin{center}
\vspace*{1.5cm}
\Large \MakeUppercase{Acknowledgements}
\end{center}
\vspace{0.5cm}} {}

\pagestyle{plain}
