%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% This template has been downloaded from:
% http://www.latextemplates.com
%
% This class file defines the structure and design of the template.
%
% There is one part of this file that needs to be filled out - the variables
% dictating the document particulars such as the author name, university
% name, etc. You will find these in the commented "DOCUMENT VARIABLES"
% section below.
%
% The other two easily-editable sections are the margin sizes and abstract.
% These have both been commented for easy editing. Advanced LaTeX
% users will have no trouble editing the rest of the document to their liking.
%
% Original header:
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%% Further modified by www.latextemplates.com % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}

% \def\today{\singlespace\ifcase\month\or
%   January\or February\or March\or April\or May\or June\or
%   July\or August\or September\or October\or November\or December\fi
%   \\ \number\year}
% \def\singletoday{\ifcase\month\or
%   January\or February\or March\or April\or May\or June\or
%   July\or August\or September\or October\or November\or December\fi
%   ~
%   \number\year}
\def\graduation{\singlespace May\\2018}
\def\singlegraduation{May~2018}

\usepackage[nottoc,numbib]{tocbibind}
%\usepackage[intoc]{nomencl}
\usepackage{nomencl}
\usepackage{setspace}
%\usepackage{vmargin}

% Used to modify the Table of Contents page
% \usepackage{tocloft}
% \usepackage{etoolbox}

% Use continuous figure and table counters
\usepackage{chngcntr}
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
\counterwithout{equation}{chapter}

\RequirePackage[utf8]{inputenc} % Allows the use of international characters (e.g. Umlauts)

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
% \usepackage[showframe,paper=a4paper,top=1.0in,bottom=1.0in,right=1.0in,left=1.5in]{geometry}
\usepackage[paper=a4paper,top=1.0in,bottom=1.0in,right=1.0in,left=1.5in]{geometry}

%----------------------------------------------------------------------------------------
\usepackage{amsmath}
%\usepackage{amsfonts}
%\usepackage{amssymb}
%\usepackage{amscd}
%\usepackage{amsthm}
%\usepackage{xspace}
\usepackage[pdftex]{graphicx}
%\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
%\usepackage{listings}
\usepackage{changepage}
%\usepackage{lstpatch}
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
%\pdfstringdefDisableCommands{\let\\\space}

%----------------------------------------------------------------------------------------
%	PARAGRAPH STYLE
%----------------------------------------------------------------------------------------
\raggedright
\setlength{\parindent}{15pt}
\setlength{\parskip}{1cm plus4mm minus3mm}

%----------------------------------------------------------------------------------------
%	CHAPTER STYLE
%----------------------------------------------------------------------------------------
\usepackage[explicit]{titlesec}
\titleformat{\chapter}[display]{\centering\bfseries}{CHAPTER~\thechapter}{0pt}{\MakeUppercase{#1}}
\titlespacing{\chapter}{0pt}{*1}{*0}
\titleformat{name=\chapter,numberless}[display]{\centering}{}{0pt}{\MakeUppercase{#1}}
\titlespacing{name=\chapter,numberless}{0pt}{*0}{*0}

\titleformat{\section}[hang]{\centering\bfseries}{}{0pt}{#1}
\titleformat{name=\section,numberless}[hang]{\bfseries}{}{0pt}{#1}
%\titlespacing{\section}{0pt}{*0}{*0}

\titleformat{\subsection}[hang]{\bfseries}{}{0pt}{#1}
\titleformat{name=\subsection,numberless}[hang]{\bfseries}{}{0pt}{#1}
%\titlespacing{\subsection}{0pt}{*0}{*0}

\titleformat{\subsubsection}[hang]{\bfseries}{}{0pt}{#1}
\titleformat{name=\subsubsection,numberless}[hang]{\bfseries}{}{0pt}{#1}
\titlespacing{\subsubsection}{\parindent}{*0}{*0}

% Set section numbering to roman numerals
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\thesection.\Roman{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\Roman{subsubsection}}

%----------------------------------------------------------------------------------------
%	COMMANDS
%----------------------------------------------------------------------------------------
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\committeefirst}[1]{\def\committeefirstname{#1}}
\newcommand*{\committeesecond}[1]{\def\committeesecondname{#1}}
% \newcommand*{\committeethird}[1]{\def\committeethirdname{#1}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\prevdegree}[1]{\def\prevdegreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\address}[1]{\def\addressname{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
% \newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}

%----------------------------------------------------------------------------------------
%	DOCUMENT VARIABLES
%	Fill in the lines below to update the thesis template
%	If you wish to cite each of the variables defined below, look at the
%	section above for the citation command e.g. \examiner{} below is
%	defined as \examname above so you cite it as \examname
%----------------------------------------------------------------------------------------

\thesistitle{Providing Metrics-Based Results to Student Pilots for Critical Phases of General Aviation Flights} % Your thesis title
%-------------------------------------------------
\supervisor{Dr. Travis Desell} % Your supervisor's name
%-------------------------------------------------
\committeefirst{Dr. Hasaan Reza} % Your first committee member's name
%-------------------------------------------------
\committeesecond{Prof. Brandon Wild} % Your second committee member's name
%-------------------------------------------------
\degree{Master of Science} % Your degree name - this is currently used in the title page and abstract
%-------------------------------------------------
\prevdegree{Bachelor of Science, University of North Dakota, 2016} % Name previous degree name
%-------------------------------------------------
\authors{Kelton Olson Karboviak} % Your name - this is used in the title page and abstract
%-------------------------------------------------
\address{Grand Forks, North Dakota} % School address - cite it with \addressname if you want it
%-------------------------------------------------
\subject{} % Your subject area - this is not currently used anywhere in the template, cite it with \subjectname if you want it
%-------------------------------------------------
\keywords{} % Keywords for your thesis - this is not currently used anywhere in the template, cite it with \keywordnames if you want it
%-------------------------------------------------
\university{\texorpdfstring{\href{http://und.edu} % Your university's URL
                {University of North Dakota}} % Your university's name - this is currently used in the title page
                {University of North Dakota}}
%-------------------------------------------------
\UNIVERSITY{\texorpdfstring{\href{http://und.edu} % Your university's URL
                {UNIVERSITY OF NORTH DAKOTA}} % Your university's name in capitals - this is currently used in the abstract page
                {UNIVERSITY OF NORTH DAKOTA}}
%-------------------------------------------------
\department{\texorpdfstring{\href{http://cs.und.edu} % Your department's URL
                {Department of Computer Science}} % Your department's name - used in the title page and abstract
                {Department of Computer Science}}
%-------------------------------------------------
\DEPARTMENT{\texorpdfstring{\href{http://cs.und.edu} % Your department's URL
                {DEPARTMENT OF COMPUTER SCIENCE}} % Your department's name in capitals - this is not currently used anywhere in the template, cite it with \DEPTNAME if you want it
                {DEPARTMENT OF COMPUTER SCIENCE}}
%-------------------------------------------------
\faculty{\texorpdfstring{\href{Faculty Web Site URL Here (include http://)} % Your faculty's URL
                {Faculty Name}} % Your faculty's name - this is currently used in the abstract page
                {Faculty Name}}
%-------------------------------------------------
% \FACULTY{\texorpdfstring{\href{Faculty Web Site URL Here (include http://)} % Your faculty's URL
%                 {FACULTY NAME (IN BLOCK CAPITALS)}} % Your faculty's name in capitals - this is not currently used anywhere in the template, cite it with \FACNAME if you want it
%                 {FACULTY NAME (IN BLOCK CAPITALS)}}
%----------------------------------------------------------------------------------------

% The default title page, this is not used in this www.latextemplates.com version
\renewcommand\maketitle{
    \newgeometry{top=2.0in,bottom=1.0in,right=1.0in,left=1.5in}
    \hypersetup{pdftitle={\ttitle}}
    \hypersetup{pdfsubject=\subjectname}
    \hypersetup{pdfauthor=\authornames}
    \hypersetup{pdfkeywords=\keywordnames}
    \thispagestyle{empty}
    \begin{titlepage}
        \begin{center}
            \setlength{\parskip}{0pt}
            {\large \singlespace \ttitle \\}% Thesis title
            \bigskip
            \bigskip
            \bigskip
            {\large by \\}
            \bigskip
            \bigskip
            \bigskip
            \bigskip

            {\large \href{mailto:kelton.karboviak@und.edu}{\authornames} \\} % Author name
            {\large \prevdegreename \\}
            \bigskip
            \bigskip
            \bigskip
            \bigskip

            {\large A Thesis \\}
            \bigskip
            {\large Submitted to the Graduate Faculty \\}
            \bigskip
            {\large of the \\}
            \bigskip
            {\large \univname \\} % University name
            \bigskip
            {\large in partial fulfillment of the requirements \\}
            \bigskip
            \bigskip
            \bigskip
            \bigskip

            {\large for the degree of \\}
            \bigskip
            {\large \degreename \\} % Degree name
            \bigskip
            \bigskip
            \bigskip
            \bigskip

			{\large \addressname} % Address of University
            \bigskip
            {\large \graduation} % Date of graduation
        \end{center}
    \end{titlepage}
    \setcounter{page}{2}
    \global\let\thanks\relax
    \global\let\maketitle\relax
    \global\let\thanks\empty
    \global\let\author\empty
    \global\let\date\empty
    \global\let\title\empty
    \global\let\title\relax
    \global\let\author\relax
    \global\let\date\relax
    \global\let\and\relax
    \restoregeometry
}

%----------------------------------------------------------------------------------------
%	DECLARATION PAGE
%----------------------------------------------------------------------------------------
\newenvironment{declaration}[0]
{
    \newgeometry{top=2.0in,bottom=1.0in,right=1.0in,left=1.5in}
    \singlespacing
    \thispagestyle{plain}

    This thesis, submitted by \authornames\ in partial fulfillment of the requirements for the Degree of \degreename\ from the \univname, has been read by the Faculty Advisory Committee under whom the work as been done and is hereby approved.
    \bigskip
    \bigskip
    \bigskip

    \begin{adjustwidth}{15em}{}

    \noindent\rule[0.1em]{20em}{0.5pt}\\ % This prints a line for a signature
    \noindent\supname

    \noindent\rule[0.1em]{20em}{0.5pt}\\
    \noindent\committeefirstname

    \noindent\rule[0.1em]{20em}{0.5pt}\\
    \noindent\committeesecondname

    \end{adjustwidth}

    \bigskip
    \bigskip
    \bigskip

    This thesis is being submitted by the appointed advisory committee as having met all of the requirements of the School of Graduate Studies at the \univname\ and is hereby approved.

    \bigskip
    \bigskip
    \bigskip

    \noindent\rule[0.1em]{20em}{0.5pt}\\ % This prints a line for the signature
    \noindent Wayne Swisher\\
    \noindent Dean of the School of Graduate Studies\\

    \bigskip
    \bigskip

    \noindent\rule[0.1em]{20em}{0.5pt}\\ % This prints a line to write the date
    \noindent Date\\
    \restoregeometry
}

%----------------------------------------------------------------------------------------
%	PERMISSION PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{permission}[0]
{
    \singlespacing
    \chapter*{Permission}
    \thispagestyle{plain}

    \hangindent=1.0in
    \hangafter=1
    \noindent Title\hspace{47pt}\ttitle\\
    \bigskip
    \hangindent=1.0in
    \hangafter=1
    \noindent Department\hspace{11pt}\deptname\\
    \bigskip
    \hangindent=1.0in
    \hangafter=1
    \noindent Degree\hspace{38pt}\degreename\\
    \bigskip

    In presenting this thesis in partial fulfillment of the requirements for a graduate degree from the \univname, I agree that the library of this University shall make it freely available for inspection. I further agree that permission for extensive copying for scholarly purposes may be granted by the professor who supervised my thesis work or, in his absence, by the Chairperson of the department or the dean of the School of Graduate Studies. It is understood that any copying or publication or other use of this thesis or part thereof for financial gain shall not be allowed without my written permission. It is also understood that due recognition shall be given to me and to the \univname\ in any scholarly use which may be made of any material in my thesis.
    \bigskip
    \bigskip
    \bigskip

    \begin{adjustwidth}{24em}{}
    \noindent\authornames\\
    \noindent\singlegraduation
    \end{adjustwidth}
}

%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{abstract}[1]
{
    \doublespacing
    \chapter{Abstract}
    \thispagestyle{plain}
    #1
}

%----------------------------------------------------------------------------------------
%	ACKNOWLEDGEMENTS PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{acknowledgements}[1]
{
    \doublespacing
    \chapter{Acknowledgements}
    \thispagestyle{plain}
    %\addtocounter{page}{-1}
    #1
}

%----------------------------------------------------------------------------------------
%	DEDICATION PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{dedication}[1]
{
    \singlespacing
    \thispagestyle{empty}
    \addtocounter{page}{-1}
    \begin{center}
    	\vspace*{\fill} % Vertically centers text
        #1
        \vspace*{\fill} % Vertically centers text
    \end{center}
}

%----------------------------------------------------------------------------------------
%	TABLE OF CONTENTS
%----------------------------------------------------------------------------------------
\renewcommand{\contentsname}{Table of Contents} % Rename chapter name for Table of Contents

% % \cftsetindents{chapter}{0em}{2.75em}
% % \setlength{\cftchapindent}{2.75em}

% \makeatletter
% \let\l@chapterstar\l@chapter
% % \patchcmd{<cmd>}{<search>}{<replace>}{<success>}{<failure>}
% \patchcmd{\l@chapterstar}{\cftchapindent}{\cftchapstarindent}{}{}
% \patchcmd{\l@chapterstar}{\cftchapfont}{\cftchapstarfont}{}{}% Insert starred chapter font
% \patchcmd{\l@chapterstar}{#2}{\cftchapstarpagefont #2}{}{}% Insert starred chapter page number font
% \makeatother

% \newcommand{\cftchapstarindent}{0em}
% \newcommand{\cftchapstarfont}{\cftchapfont\itshape}
% \newcommand{\cftchapstarpagefont}{\cftchappagefont\itshape}


% \renewcommand{\cftparskip}{6pt}
% \renewcommand{\cftchapdotsep}{\cftdotsep}

% \renewcommand{\cfttoctitlefont}{\hfill\MakeUppercase}
% \renewcommand{\cftaftertoctitle}{\hfill\mbox{}}
% \renewcommand{\cftaftertoctitleskip}{6pt}
           
% \renewcommand{\cftchapaftersnum}{.}

\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\renewcommand\tableofcontents{
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
}\end{spacing}
}

%----------------------------------------------------------------------------------------
%	LIST OF FIGURES
%----------------------------------------------------------------------------------------
% \cftsetindents{figure}{0em}{2em}

% \renewcommand{\cftloftitlefont}{\hfill\MakeUppercase}
% \renewcommand{\cftafterloftitle}{\hfill\mbox{}\\[\baselineskip]
% 	Figure \hfill Page}
% \renewcommand{\cftafterloftitleskip}{6pt}

% \renewcommand{\cftfigaftersnum}{.}


\renewcommand\listoffigures{
    \setlength{\parskip}{10pt}
    \chapter{\listfigurename}
    Figure \hfill Page\par
    \@starttoc{lof}%
}

%----------------------------------------------------------------------------------------
%	LIST OF TABLES
%----------------------------------------------------------------------------------------
% \cftsetindents{table}{0em}{2em}

% \renewcommand{\cftlottitlefont}{\hfill\MakeUppercase}
% \renewcommand{\cftafterlottitle}{\hfill\mbox{}\\[\baselineskip]
% 	Table \hfill Page}
% \renewcommand{\cftafterlottitleskip}{6pt}

% \renewcommand{\cfttabaftersnum}{.}


\renewcommand\listoftables{
    \setlength{\parskip}{10pt}
    \chapter{\listtablename}
    Table \hfill Page\par
    \@starttoc{lot}%
}

