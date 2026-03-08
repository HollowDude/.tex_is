%%
%% This is file `thesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% thesis.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2015 by Hassán Lombera Rodríguez <hlombera@uci.cu>
%% Maintainers: Luis Guillermo Silva Rojas <lgsilva@uci.cu>
%%              Rubén Alcolea Núñez <ralcolea@uci.cu>
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.3c of this license
%% or (at your option) any later version. The latest version of this
%% license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2006/05/20 or later.
%% ==========================================================================
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{thesis}[2015/07/11 v1.0.1 thesis template for the University of Computer Science]
\LoadClass[11pt]{report} % set the openright option if you want each chapter starts on odd(right) pages
\RequirePackage{fancyhdr}
\RequirePackage{ifthen}
\newdimen\marginspace
\marginspace=1in
\newcommand{\chapstyle}[1]{\def\@chapstyle{#1}}
\chapstyle{Sonny}
\PassOptionsToPackage{\@chapstyle}{fncychap}
\RequirePackage{fncychap}
\ifthenelse{\equal{\@chapstyle}{Sonny}}{
\renewcommand{\DOCH}{%
 \vskip -60\p@ %modification
 \raggedleft
 \CNV\FmN{\@chapapp}\space \CNoV\thechapter
 \par\nobreak
 \vskip 40\p@}
\renewcommand{\DOTIS}[1]{%
 \vskip -60\p@ %modification
 \CTV\raggedleft\mghrulefill{\RW}\par\nobreak
 \vskip 5\p@
 \CTV\FmTi{#1}\par\nobreak
 \mghrulefill{\RW}\par\nobreak
 \vskip 10\p@}% modification
 }{}

\def\defaultOption{oneside}
\DeclareOption{twoside}
{%
\PassOptionsToPackage{top=1in, bottom=1in, inner=1.5cm, outer=3cm, bindingoffset=0.5cm,
 twoside, includefoot, onecolumn}{geometry}%
\def\defaultOption{twoside}
}
\ifthenelse{\equal{\defaultOption}{oneside}}
{
\PassOptionsToPackage{margin=\marginspace, includefoot, onecolumn}{geometry}
}{}
\ProcessOptions\relax
\RequirePackage{geometry}

\RequirePackage[latin1]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\graphicspath{{images/}{Images/}}
\def\input@path{{images/}{Images/}}
\RequirePackage[update]{epstopdf}
\def\lang{english}
\DeclareOption{spanish}
{%
\PassOptionsToPackage{spanish, es-tabla}{babel}%
\def\lang{}
}
\ProcessOptions\relax
\RequirePackage[\lang]{babel}[2014/09/25]
\DeclareOption{spanish}
{%
\decimalpoint
}
\ProcessOptions\relax
\RequirePackage{datetime}
\RequirePackage{enumitem}
\setlist{noitemsep}
\RequirePackage{csquotes}
\RequirePackage[small, labelsep=period, tableposition=top]{caption}[2013/05/02]
\RequirePackage{subcaption}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb} % for math purposes
\RequirePackage{kbordermatrix} % for math purposes
\RequirePackage[dvipsnames, svgnames, x11names, table]{xcolor}
\RequirePackage{multirow}
\RequirePackage[nomessages]{fp}
\RequirePackage[titles]{tocloft}
\RequirePackage{bigstrut}
\RequirePackage{longtable}
\RequirePackage{pdflscape}
\RequirePackage{hhline}
\RequirePackage{pdfpages}
\RequirePackage{setspace}
\RequirePackage{algorithm, algpseudocode} %pseudocode. Before hyperref
\RequirePackage{upquote} % For having straight single quotes in lstlistings
\RequirePackage{listings} % coding
\RequirePackage{txfonts} % for nesting bold, italic and different types of fonts
\RequirePackage{etoolbox}
\RequirePackage{xkeyval}
\RequirePackage{environ}
\RequirePackage[urlcolor=blue, filecolor=magenta, colorlinks, linkcolor=blue,
 citecolor=blue]{hyperref}
\RequirePackage{draftwatermark}
\RequirePackage{textpos}
\RequirePackage{rotating}
\RequirePackage[titletoc]{appendix}
\RequirePackage{bookmark}
\RequirePackage{aurical}%font
\RequirePackage{calligra}%fo1nt
\RequirePackage[toc, acronym, shortcuts]{glossaries}[2015/03/16]
\RequirePackage{soul}
\RequirePackage{ifdraft}
\RequirePackage[obeyFinal,colorinlistoftodos, prependcaption,spanish]{todonotes}[2012/07/25]
\RequirePackage[framemethod=tikz, hidealllines=true,roundcorner=10pt]{mdframed}[2013/07/01]

\RequirePackage{lipsum}
\renewcommand\lips@dolipsum{% For making lipsum compatible with babel spanish
  \ifnum\value{lips@count}<\lips@max\relax
    \addtocounter{lips@count}{1}%
    \csname lipsum@\romannumeral\c@lips@count\endcsname
    \lips@dolipsum
  \fi
}

\newbool{noloa}
\boolfalse{noloa}
\DeclareOption{noloa}{\booltrue{noloa}}\ProcessOptions

\newbool{nolol}
\boolfalse{nolol}
\DeclareOption{nolol}{\booltrue{nolol}}\ProcessOptions

\newcommand{\eqIntRef}[2]{(\ref{#1}-\ref{#2})}
\renewcommand{\appendixtocname}{Apéndices}
\renewcommand{\appendixpagename}{Apéndices}

\newcommand{\ucicenter}[1]
{
\def\@center{#1}
}

\newcommand{\facultynum}[1]
{
\ifnum#1>0\relax
\def\@facultyNum{#1}
\else
  \PackageError{Thesis}{The faculty number provided is not a number!}{}
\fi
}
\newcommand{\eqRef}[1]{Ec.~(\ref{#1})}
\newcommand{\figRef}[1]{Fig.~(\ref{#1})}
\newcommand{\soft}{\emph{software }}

\newcommand{\@logoFile}{LogoUCI}
\newcommand{\@logo}
{
\ifboolexpr{test{\IfFileExists{\@logoFile.eps}} or test{\IfFileExists{\@logoFile.pdf}}}
{
  \begin{figure}[!t]
  \centering
  \includegraphics[width=0.35\textwidth]{\@logoFile}
  \vspace{-3ex}
  \end{figure}
}
{
  \PackageError{Thesis}{File \@logoFile\space not found.
   Make sure its format matches the current compilation chain!}{}
}
}

\newcommand{\@logoFoot}
{
\textsc{\large Universidad de las Ciencias Informáticas}     \\
\textsc
{\large
\ifx\@center\@undefined\relax
\else
\ifx\@center\@empty\relax
\else
 \@center,
\fi
\fi
Facultad \@facultyNum} \\
}

\newcommand{\@doctypeText}
{
\centering
{\bfseries Trabajo de diploma para optar por el título de
Ingeniero en Ciencias Informáticas }
}

\newcommand{\doctype}[1]
{
\def\@doctype{#1}
}
\doctype{Tesis de grado}

\newcommand{\@setheading}
{
\ifthenelse{\equal{\defaultOption}{oneside}}
{
\fancyhead{} % clear all header fields
\fancyhead[R]{\slshape  \leftmark}     % for "oneside" option only

\fancyfoot{} % clear all footer fields
\fancyfoot[R]{\thepage}    % for "oneside" option only
\fancyfoot[L]{\@author}       % for "oneside" option only
\ifnum\theauthesiscnt=2
\fancyfoot[R]{\@authornd}
\fancyfoot[C]{\thepage}
\fi
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\setlength{\headheight}{14.05273pt}

\fancypagestyle{plain}
{%
\fancyhf{} % clear all header and footer fields
\fancyfoot[R]{\thepage} % for "oneside" option only
\fancyfoot[L]{\@author}    % for "oneside" option only
\ifnum\theauthesiscnt=2
\fancyfoot[R]{\@authornd}
\fancyfoot[C]{\thepage}
\fi
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.4pt}
}
}
{ % twoside
\fancyhead{} % clear all header fields
\fancyhead[RO]{\slshape  \leftmark}      % for "twoside" option only
\fancyhead[LE]{\slshape  \rightmark}  % for "twoside" option only

\fancyfoot{} % clear all footer fields
\fancyfoot[C]{\thepage}     % for "twoside" option only
\fancyfoot[RO,LE]{\@author}    % for "twoside" option only
\ifnum\theauthesiscnt=2
\fancyfoot[RE,LO]{\@authornd}
\fi
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\fancypagestyle{plain}
{%
\fancyhf{} % clear all header and footer fields
\fancyfoot[C]{\thepage}  % for "twoside" option only
\fancyfoot[LE,RO]{\@author} % for "twoside" option only
\ifnum\theauthesiscnt=2
\fancyfoot[RE,LO]{\@authornd}
\fi
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.4pt}
}
}
}

\newcommand{\myThoughtFont}[1]
{
\def\@thoughtFont{#1}
}
\myThoughtFont{\Fontskrivan}
\newcommand{\thought}[1]
{
\def\@thought{#1}
}
\newcommand{\dedicatory}[1]
{
\def\@dedicatory{#1}
}
\newcommand{\acknowledgment}[1]
{
\def\@acknowledgment{#1}
}
\newcommand{\keywords}[1]
{
\def\@keywords{#1}
}
\renewcommand{\abstract}[1]
{
\def\@abstract{#1}
}

\newcommand{\set@thought}
{
\newpage
\thispagestyle{empty}
{
\@thoughtFont\slshape\fontsize{16}{12}\selectfont
\begin{flushright}
\@thought
\end{flushright}
}
}
\newcommand{\set@dedicatory}
{
\clearpage
\thispagestyle{empty}
\chapter*{Dedicatoria}
{
\@thoughtFont\slshape\fontsize{16}{12}\selectfont
\@dedicatory
}
}
\newcommand{\set@acknowledgment}
{
\newpage
\thispagestyle{empty}
\chapter*{Agradecimientos}
{
\@thoughtFont\slshape\fontsize{16}{12}\selectfont
\@acknowledgment
}
}
\newcommand{\set@abstract}
{
\newpage
\thispagestyle{empty}
\chapter*{Resumen}
{
\ChangeLipsumPar
\@abstract
\quad\\[0.6\baselineskip]
\noindent \textbf{Palabras clave:} \@keywords.
\ChangeLipsumPar
}
}

\newcommand{\@validateUserInput}
{%
\ifx\@dedicatory\@undefined\relax
\PackageError{Thesis}{You need to define the command \protect\dedicatory\space to continue}{}
\fi
\ifx\@acknowledgment\@undefined\relax
\PackageError{Thesis}{You need to define the command \protect\acknowledgment\space to continue}{}
\fi
\ifx\@keywords\@undefined\relax
\PackageError{Thesis}{You need to define the command \protect\keywords\space to continue}{}
\fi
\ifx\@abstract\@undefined\relax
\PackageError{Thesis}{You need to define the command \protect\abstract\space to continue}{}
\fi
\ifx\@thought\@undefined\relax
\PackageError{Thesis}{You need to define the command \protect\thought\space to continue}{}
\fi
\ifx\@facultyNum\@undefined\relax
\PackageError{Thesis}{You need to define the command \protect\facultyNum\space to continue}{}
\fi
\ifthenelse{\equal{\@author}{undefined}}
{
\PackageError{Thesis}{You need to define the command \protect\author\space to continue}{}
}
{}%

\ifnum\thecnt=0
\PackageError{Thesis}{You need to define at least one tutor. Use command \protect\addtutor\space to continue}{}
\else
\ifnum\thecnt>1
\def\tutorsheading{Tutores:}
\fi
\fi
\ifnum\theauthesiscnt=0
\PackageError{Thesis}{You need to define at least one author. Use command \protect\addauthor\space or \protect\author\space to continue}{}
\else
\ifnum\theauthesiscnt>1
\def\authorsheading{Autores:}
\fi
\fi
}

\newcommand{\@variablecontent}
{%
\set@thought
\set@dedicatory
\set@acknowledgment
\@authorship
\set@abstract
\tableofcontents
\listoffigures
\listoftables
\ifbool{noloa}{}{\listofalgorithms}
\ifbool{nolol}{}{\lstlistoflistings}
\ifoptionfinal{}{\phantomsection\listoftodos\addcontentsline{toc}{chapter}{Lista de tareas pendientes}}
}
\newcommand{\introduction}
{
\phantomsection
\chapter*{Introducción  \markboth{\slshape INTRODUCCIÓN}{\slshape INTRODUCCIÓN}}
\addcontentsline{toc}{chapter}{Introducción}
}
\newcommand{\conclusions}
{
\phantomsection
\chapter*{Conclusiones \markboth{\slshape CONCLUSIONES}{\slshape CONCLUSIONES}}
\addcontentsline{toc}{chapter}{Conclusiones}
}
\makeglossaries
\newcommand{\newacronymeng}[3]
{
\newacronym[first={\glsentrylong{\glslabel} (\glsentryshort{\glslabel}, por sus siglas en inglés)}]{#1}{#2}{#3}
}
\renewcommand*{\glsclearpage}{\clearpage} % it prevents the glossaries package to start in odd pages always
\newcommand{\suggestions}
{
\phantomsection
\chapter*{Recomendaciones \markboth{\slshape RECOMENDACIONES}{\slshape RECOMENDACIONES}}
\addcontentsline{toc}{chapter}{Recomendaciones}
}

\newcommand\getsign[1]
{%
\csuse{sign#1}
}

\newcommand\getcharge[1]
{%
\csuse{charge#1}
}

\newcounter{cntsign}
\setcounter{cntsign}{0}
\newcommand{\addsign}[2][]
{%
\stepcounter{cntsign}%
\csdef{sign\thecntsign}{#2}
\csdef{charge\thecntsign}{#1}
}

\newcounter{cnt}
\newcommand\addtutor[2][Tutor]
{%
\stepcounter{cnt}%
\csdef{tutor\thecnt}{#2}
\addsign[#1]{#2}
\def\tutorsheading{#1:}
}
\newcommand\gettutor[1]
{%
\csuse{tutor#1}
}

\def\tutorsheading{}
\def\authorsheading{}
\newcounter{authesiscnt}
\newcommand\addauthor[2][Autor]
{%
\ifnum\theauthesiscnt<2
\stepcounter{authesiscnt}%
\csdef{author\theauthesiscnt}{#2}
\addsign[#1]{#2}
\def\authorsheading{#1:}
\else
\PackageWarning{Thesis}{You can define two authors at most. From third author all will be ignored!}{}
\fi
}
\newcommand\getauthor[1]
{%
\csuse{author#1}
}

\renewcommand\author[2][Autor]%
{
\addauthor[#1]{#2}
}

\newcounter{authtempcnt}
\setcounter{authtempcnt}{1}
\def\@author{\getauthor{1}}
\def\@authornd{\getauthor{2}}

\numberwithin{equation}{section} % excellent equations output customization. It prepends the section number in front of each equation

\newcounter{pagecount}
\setlength{\TPHorizModule}{\paperwidth}
\setlength{\TPVertModule}{\paperheight}
\newcommand\@pagestamp{%
\begin{textblock}{2}(0.17,0.65)
\begin{rotate}{45}
\resizebox{!}{100pt}{\texttt{\textcolor{red}{\shortstack{Page limit reached\\ (\maxpages{} pages)}}}}
\end{rotate}
\end{textblock}
}
\newcommand{\set@pagelimit}[1]
{
    \setcounter{pagecount}{0}%
    \gdef\maxpages{#1}%
    \ifx\latex@outputpage\@undefined\relax%
        \global\let\latex@outputpage\@outputpage%
    \fi%
    \gdef\@outputpage{%
        \stepcounter{pagecount}
        \ifnum\value{pagecount}>\maxpages \relax%
         % Comment lines below until the \else statement to silently remove all additional pages
         \@sc@wm@stampfalse % for avoiding writing the draftwatermark package text on top
\AddEverypageHook{\@pagestamp}
          \latex@outputpage%
         \else%
            \latex@outputpage%
        \fi%
    }%
}
\let\date\relax

\renewcommand{\listalgorithmname}{Lista de algoritmos}
\floatname{algorithm}{Algoritmo}
\renewcommand{\lstlistingname}{Código fuente}
\renewcommand{\lstlistlistingname}{Lista de códigos fuentes}

\newcommand{\CC}[1][\tiny]{{C\nolinebreak[4]\hspace{-.05em}\raisebox{.4ex}{#1\bf ++}}}
\definecolor{strcolor}{RGB}{163,21,21} % This is the Visual Studio color for strings.

\definecolor{javared}{rgb}{0.6,0,0} % for strings
\definecolor{javagreen}{rgb}{0.25,0.5,0.35} % comments
\definecolor{javapurple}{rgb}{0.5,0,0.35} % keywords
\definecolor{javadocblue}{rgb}{0.25,0.35,0.75} % javadoc

\definecolor{PHP_default_old}{HTML}{000000}
\colorlet{PHP_default}{PHP_default_old!75!black}
\definecolor{PHP_variable_old}{HTML}{C82210}%C82210
\colorlet{PHP_variable}{PHP_variable_old!75!black}
\definecolor{PHP_blue}{RGB}{0,0,128}
\definecolor{PHP_green}{RGB}{0,128,0}
\definecolor{PHP_emph4_old}{HTML}{C60484}
\colorlet{PHP_emph4}{PHP_emph4_old!75!black}

\newtoggle{InString}{}% Keep track of if we are within a string
\togglefalse{InString}% Assume not initally in string

\newcommand*{\ColorIfNotInString}[1]{\iftoggle{InString}{#1}{\color{blue}#1}}%

\newcommand{\PHPhighlightvar}[1]{\ifnum\theDollarFlag=1 \color{PHP_variable} \fi#1\setcounter{DollarFlag}{0}}
\newcounter{DollarFlag}


\newcommand*{\loadlanguage}[1]
{
\ifthenelse{\equal{#1}{Java}}
{
\lstset{language=Java,
basicstyle=\ttfamily,
keywordstyle=\bf\color{javapurple},
stringstyle=\color{javared},
commentstyle=\color{javagreen},
morecomment=[s][\color{javadocblue}]{/**}{*/},
morekeywords={String},
numbers=left,
numberstyle=\tiny\color{black},
stepnumber=1,
numbersep=10pt,
tabsize=4,
showspaces=false,
showstringspaces=false}

}
{
\ifthenelse{\equal{#1}{C++}}
{
\lstset{language = [ISO]C++,
commentstyle = \bf\color{Green},
keywordstyle = \bf\color{blue},
morecomment=[l]{@},
morekeywords={signals, slots, finally, printf, string},
showstringspaces=false,
stringstyle=\color{strcolor},
tabsize=2,
breaklines=true}
}
{
\ifthenelse{\equal{#1}{PHP}}
{
\lstset{
language        = php,
basicstyle      = \footnotesize\ttfamily,
keywordstyle    = \color{PHP_blue},
stringstyle     = \color{PHP_green}\toggletrue{InString},
literate        =  *{\$}{{\color{PHP_variable}\setcounter{DollarFlag}{1}\$\color{PHP_default}}}1
    {0}{{{\ColorIfNotInString{0}}}}1
    {1}{{{\ColorIfNotInString{1}}}}1
    {2}{{{\ColorIfNotInString{2}}}}1
    {3}{{{\ColorIfNotInString{3}}}}1
    {4}{{{\ColorIfNotInString{4}}}}1
    {5}{{{\ColorIfNotInString{5}}}}1
    {6}{{{\ColorIfNotInString{6}}}}1
    {7}{{{\ColorIfNotInString{7}}}}1
    {8}{{{\ColorIfNotInString{8}}}}1
    {9}{{{\ColorIfNotInString{9}}}}1,
    %{;}{{;}}1,
identifierstyle = \color{PHP_default}\PHPhighlightvar,
commentstyle    = \color{gray}\slshape,
emph            =[1]{var, const, abstract,
             protected, private, public,
             static, final, extends, implements,
             global, if, else, foreach ,for,
             endforeach, endif, endfor, elseif,
             as},
emphstyle       =[1]\color{PHP_blue},%\bf,
otherkeywords={<?php, ?>},
emph            =[2]{<?php, ?>},
emphstyle       =[2]\color{PHP_blue},
emph            =[3]{},
emphstyle       =[3]\color{PHP_emph4},%\bf,
breaklines      = true,
captionpos      = t,
rulecolor       =\color{black},
keywords    ={__halt_compiler,    abstract,   and,    array,
         as, break,  callable,   case,   catch,  class,
         clone,  const,  continue,   declare,    default,
         die,    do, echo,   else,   elseif,
         empty,  enddeclare, endfor, endforeach, endif,
         endswitch,  endwhile,   eval,   exit,   extends,
         final,  finally,    for,    foreach,    function,
         global, goto, if,   implements, include,
         include_once,   instanceof, insteadof,
         interface,  isset, list,    namespace,
         new,    or, print, private, protected,  public,
         require,    require_once, return,   static,
         switch, throw,  trait, try, unset, use, var,
         while,  xor,    yield, true, false},
numbers=left,
stepnumber=1,
numberfirstline=true,
numberstyle=\footnotesize,
xleftmargin=4.0ex,
upquote=true,
showlines=true,
showspaces=false,
showstringspaces=false
}
}
{
\ifthenelse{\equal{#1}{Python}}
{
\lstset{%
language=python,
literate=%
*{0}{{{\color{lightred}0}}}1
{1}{{{\color{lightred}1}}}1
{2}{{{\color{lightred}2}}}1
{3}{{{\color{lightred}3}}}1
{4}{{{\color{lightred}4}}}1
{5}{{{\color{lightred}5}}}1
{6}{{{\color{lightred}6}}}1
{7}{{{\color{lightred}7}}}1
{8}{{{\color{lightred}8}}}1
{9}{{{\color{lightred}9}}}1,
basicstyle=\footnotesize\ttfamily, % Standardschrift
numbers=left,               % Ort der Zeilennummern
numbersep=5pt,              % Abstand der Nummern zum Text
tabsize=4,                  % Groesse von Tabs
extendedchars=true,         %
breaklines=true,            % Zeilen werden Umgebrochen
keywordstyle=\color{blue}\bfseries,
frame=b,
commentstyle=\color{brown}\itshape,
stringstyle=\color{editorOcher}\ttfamily, % Farbe der String
showspaces=false,           % Leerzeichen anzeigen ?
showtabs=false,             % Tabs anzeigen ?
xleftmargin=17pt,
framexleftmargin=17pt,
framexrightmargin=5pt,
framexbottommargin=4pt,
showstringspaces=false,      % Leerzeichen in Strings anzeigen ?
}%
}
{
\PackageWarning{Thesis}{Forwarding loading request of language #1 to Package Listings}
\lstset{language=#1}
}
}
}
}
}
\definecolor{lightgray}{rgb}{0.95, 0.95, 0.95}
\definecolor{darkgray}{rgb}{0.4, 0.4, 0.4}
\definecolor{editorGray}{rgb}{0.95, 0.95, 0.95}
\definecolor{editorOcher}{rgb}{1, 0.5, 0} % #FF7F00 -> rgb(239, 169, 0)
\definecolor{editorGreen}{rgb}{0, 0.5, 0} % #007C00 -> rgb(0, 124, 0)
\definecolor{orange}{rgb}{1,0.45,0.13}
\definecolor{olive}{rgb}{0.17,0.59,0.20}
\definecolor{brown}{rgb}{0.69,0.31,0.31}
\definecolor{purple}{rgb}{0.38,0.18,0.81}
\definecolor{lightblue}{rgb}{0.1,0.57,0.7}
\definecolor{lightred}{rgb}{1,0.4,0.5}
\lstdefinelanguage{CSS}{
  keywords={color,background-image:,margin,padding,font,weight,display,position,top,left,right,bottom,list,style,border,size,white,space,min,width, transition:, transform:, transition-property, transition-duration, transition-timing-function},
  sensitive=true,
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]",
  alsoletter={:},
  alsodigit={-}
}

\lstdefinelanguage{JavaScript}{
  morekeywords={typeof, new, true, false, catch, function, return, null, catch, switch, var, if, in, while, do, else, case, break},
  morecomment=[s]{/*}{*/},
  morecomment=[l]//,
  morestring=[b]",
  morestring=[b]'
}

\lstdefinelanguage{HTML5}{
    language=html,
    sensitive=true,
    alsoletter={<>=-},
    morecomment=[s]{<!-}{-->},
    tag=[s],
    otherkeywords={
    % General
    >,
    % Standard tags
   <!DOCTYPE,
    </html, <html, <head, <title, </title, <style, </style, <link, </head, <meta, />,
   % body
   </body, <body,
   % Divs
   </div, <div, </div>,
   % Paragraphs
   </p, <p, </p>,
   % scripts
   </script, <script,
    % More tags...
    <canvas, /canvas>, <svg, <rect, <animateTransform, </rect>, </svg>, <video, <source, <iframe, </iframe>, </video>, <image, </image>, <header, </header, <article, </article
    },
    ndkeywords={
    % General
    =,
    % HTML attributes
    charset=, src=, id=, width=, height=, style=, type=, rel=, href=,
    % SVG attributes
    fill=, attributeName=, begin=, dur=, from=, to=, poster=, controls=, x=, y=, repeatCount=, xlink:href=,
    % properties
    margin:, padding:, background-image:, border:, top:, left:, position:, width:, height:, margin-top:, margin-bottom:, font-size:, line-height:,
   % CSS3 properties
    transform:, -moz-transform:, -webkit-transform:,
    animation:, -webkit-animation:,
    transition:,  transition-duration:, transition-property:, transition-timing-function:,
    }
}

\lstdefinestyle{htmlcssjs} {%
  % General design
  basicstyle={\footnotesize\ttfamily},
  frame=b,
  % line-numbers
  xleftmargin={0.75cm},
  numbers=left,
  stepnumber=1,
  firstnumber=1,
  numberfirstline=true,
  % Code design
  identifierstyle=\color{black},
  keywordstyle=\color{blue}\bfseries,
  ndkeywordstyle=\color{editorGreen}\bfseries,
  stringstyle=\color{editorOcher}\ttfamily,
  commentstyle=\color{brown}\ttfamily,
  % Code
  language=HTML5,
  alsolanguage=JavaScript,
  alsodigit={.:;},
  tabsize=2,
  showtabs=false,
  showspaces=false,
  showstringspaces=false,
  extendedchars=true,
  breaklines=true,
  % German umlauts
  literate=%
  {Ö}{{\"O}}1
  {Ä}{{\"A}}1
  {Ü}{{\"U}}1
  {ß}{{\ss}}1
  {ü}{{\"u}}1
  {ä}{{\"a}}1
  {ö}{{\"o}}1
}

\newcommand{\@pagelimit}{80}
\def\@pagelimitmode{strict} % by default
\DeclareOptionX{pagelimitmode}[strict]{\def\@pagelimitmode{#1}}
\ProcessOptionsX
\renewcommand{\maketitle}
{
\@validateUserInput
\newgeometry{margin=\marginspace, includefoot}
\bgroup
\singlespacing
\ifthenelse{\equal{\@pagelimitmode}{strict}}{\set@pagelimit{\@pagelimit}}{}
\pagenumbering{roman}
\thispagestyle{empty}

\begin{center}
\@logo %setting the logo
\@logoFoot %setting the text below the logo

\doublespacing
\vfill

\textsc{\LARGE \@title} \\
\vfill
\@doctypeText
\vfill

    \newcounter{rowcnt}
    \setcounter{rowcnt}{1}
\begin{tabular}{r l}
  \centering
  \authorsheading & \@author\\
  \ifnum\theauthesiscnt=2
& \@authornd\\
  \fi
  \tutorsheading  & \gettutor{\therowcnt} \\
  \whileboolexpr{test{\ifnumcomp{\value{rowcnt}}{<}{\thecnt}}}%
{
\stepcounter{rowcnt}
& \gettutor{\therowcnt}\\
}
\end{tabular}
\vfill
{\bfseries La Habana, \number\year} \\
\end{center}
\egroup
\@variablecontent
\restoregeometry

\@setheading
\ifthenelse{\equal{\@pagelimitmode}{flex}}{\set@pagelimit{\@pagelimit}}{}
\pagenumbering{arabic}
\onehalfspacing
\pagestyle{fancy}
}

\onehalfspacing

\renewcommand{\labelitemi}{$\bullet$}
\renewcommand{\labelitemii}{$\circ$}
\renewcommand{\labelitemiii}{\tiny$\blacksquare$}


\RequirePackage[
backend = biber,
style = authoryear-ibid,
bibstyle = iso-authoryear,
hyperref = true,
backref=true,
natbib = true,
sortcites = true,
ibidtracker = strict,
backrefstyle = three,
opcittracker = true,
sortlocale=es_ES]{biblatex}[2014/06/25]
\setcounter{smartand}{1}
\DefineBibliographyStrings{spanish}{andothers = {et al.,}, urlalso = {url}}
\DeclareOptionX{bibitemsep}[1ex]{\bibitemsep=#1}
\ProcessOptionsX

\AtBeginDocument
{

\hypersetup
{
    unicode=false,                %non-Latin characters in Acrobat?s bookmarks
    pdftitle={\@title},           %title
    pdfauthor={\@author  \@authornd},         %author
    pdfsubject={\@doctype},       %subject of the document
    pdfcreator={\LaTeX},          %creator of the document
    pdfkeywords={\@keywords},     %list of keywords
    pdfnewwindow=true,            %links in new window
    plainpages=false,             %make page anchors using the formatted form of the page number. With this option, hyperref writes different anchors for pages ‘ii’ and ‘2’
}

\DeclareOption{print}
{
\hypersetup
{
hidelinks
}
\renewcommand{\@predefensetext}{\resizebox{!}{12pt}{\textcolor{gray!60}
{Pre-defensa [versión de impresión]}}}
}
\ProcessOptions
}

\newcommand{\comment}[2][MDC]
{
  \todo[color={green!40},size=\footnotesize,caption=\textbf{\footnotesize[\uppercase{#1}]}]{#2}
}

\newcommand{\mycomment}[2][HLR]
{
  \todo[color={red!100!green!33},size=\footnotesize,caption=\textbf{\footnotesize[\uppercase{#1}]}]{#2}
}

\newcommand{\hlblock}[1]
{
  \ifoptionfinal
  {
   \begin{mdframed}[backgroundcolor=white]
    #1
    \end{mdframed}
  }
  {
    \begin{mdframed}[backgroundcolor=yellow]
    #1
    \end{mdframed}
  }
}

\ifoptionfinal{\sethlcolor{white}}{}{\sethlcolor{yellow}}

\newdimen\signaturespacing
\signaturespacing=8ex

\def\@ashippage{fau}
\DeclareOptionX{authorshippage}[fau]{\def\@ashippage{#1}}
\ProcessOptionsX

\newcommand{\@authorship}
{
\clearpage
\thispagestyle{empty}
\chapter*{Declaración de autoría}

Declaramos ser autores de la presente tesis y reconocemos a la Universidad de las Ciencias Informáticas los derechos patrimoniales sobre esta, con carácter exclusivo.\\

Para que así conste firmamos la presente a los \underline{\hspace{0.7cm}} días del mes de \underline{\hspace{1.7cm}} del año \underline{\hspace{1.3cm}}.

\newcounter{itemscnt}
\setcounter{itemscnt}{0}
\newcounter{itemOnLeft}
\setcounter{itemOnLeft}{2}
\newcounter{itemOnRight}
\setcounter{itemOnRight}{3}
\newcounter{maxcnt}
\setcounter{maxcnt}{\thecntsign}
\vfill
\begin{center}
\ifnumodd{\value{cntsign}}
{
\ifthenelse{\equal{\@ashippage}{ltd}} % Last tutor down
{
\setcounter{maxcnt}{\thecntsign-1}
\setcounter{itemOnLeft}{1}
\setcounter{itemOnRight}{2}
}
{ % First author up
\begin{tabular}{c}
\rule{\widthof{\getsign{1}\hskip 2ex}}{1pt}\\
\getsign{1}\\
\getcharge{1}
\end{tabular}\\[\signaturespacing]
\stepcounter{itemscnt}
}
}
{
\setcounter{itemOnLeft}{1}
\setcounter{itemOnRight}{2}
    }
    % below, the general approach for placing signatures side by side
    \begin{tabular}{cp{0.15\textwidth}c}
    \whileboolexpr{test{\ifnumcomp{\value{itemscnt}}{<}{\themaxcnt}}}%
    {
      \rule{\widthof{\getsign{\theitemOnLeft}\hskip 2ex}}{1pt}
      &&\rule{\widthof{\getsign{\theitemOnRight}\hskip 2ex}}{1pt}\\
      \getsign{\theitemOnLeft}&&\getsign{\theitemOnRight}\\
    \getcharge{\theitemOnLeft}&&\getcharge{\theitemOnRight}\\[\signaturespacing]
    \setcounter{itemscnt}{\theitemscnt+2}
    \setcounter{itemOnLeft}{\theitemOnLeft+2}
    \setcounter{itemOnRight}{\theitemOnRight+2}
    \hskip -2ex % Only God knows why do I need to set this value here. If not, the signature rule shifts to right
    }
    \end{tabular}\\[\signaturespacing]
    \ifnumodd{\value{cntsign}}
     {
\ifthenelse{\equal{\@ashippage}{ltd}}
{
\begin{tabular}{c}
\rule{\widthof{\getsign{\thecntsign}\hskip 2ex}}{1pt}\\
\getsign{\thecntsign}\\
\getcharge{\thecntsign}
\end{tabular}\\[\signaturespacing]
}{}
  }{}
\end{center}
\vfill
}

\newcounter{appcnt}
\setcounter{appcnt}{0}
\newcommand\addappendix[2][]
{%
\stepcounter{appcnt}%
\csdef{appendix\theappcnt}{#2}
    \csdef{appendixlinkname\theappcnt}{#1}
}

\newcommand{\@setplainstyle}
{
\fancypagestyle{plain}
{%
\fancyhf{} % clear all header and footer fields
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
}
\pagestyle{plain}
}

\newcommand\set@appendices
{
\ifnum\theappcnt>0% there is at least one appendix to add

\newcounter{tempcnt}
\newcounter{includepdfpage}
  \whileboolexpr{test{\ifnumcomp{\value{tempcnt}}{<}{\theappcnt}}}%
{
\@setplainstyle
\stepcounter{tempcnt}
\includepdf[pages=-,link,linkname=\csuse{appendixlinkname\thetempcnt},pagecommand={\refstepcounter{includepdfpage}\label{\csuse{appendixlinkname\thetempcnt}.\theincludepdfpage}}]{\csuse{appendix\thetempcnt}}
}
\fi
}

\newbool{annex}
\boolfalse{annex}
\newcommand{\appendixes}{\booltrue{annex}}
\NewEnviron{addendum}
{
\global\let\set@addendum\BODY
}

\preto{\longtable}{\small} % Enginneering tables font should be smaller than text font.
\newcommand{\colorentry}[1]{\cellcolor{blue!20} #1}

\newcommand{\storyname}[1]{\def\@storyname{#1}}
\newcommand{\storyuser}[1]{\def\@storyuser{#1}}
\newcommand{\storyiter}[1]{\def\@storyiter{#1}}
\newcommand{\storypriority}[1]{\def\@storypriority{#1}}
\newcommand{\storyrisk}[1]{\def\@storyrisk{#1}}
\newcommand{\storypoints}[1]{\def\@storypoints{#1}}
\newcommand{\storyrealpoints}[1]{\def\@storyrealpoints{#1}}
\newcommand{\storydescription}[1]{\def\@storydescription{#1}}
\newcommand{\storyobservation}[1]{\def\@storyobservation{#1}}
\newcommand{\storyinterface}[1]{\def\@storyinterface{#1}}
\newcommand{\storyprogrammer}[1]{\def\@storyprogrammer{#1}}

\newcommand*{\@clruserstorycmds}{
\let\@storydescription\undefined
\let\@storyname\undefined
\let\@storyuser\undefined
\let\@storyiter\undefined
\let\@storypriority\undefined
\let\@storyrisk\undefined
\let\@storypoints\undefined
\let\@storyrealpoints\undefined
\let\@storyobservation\undefined
\let\@storyinterface\undefined
\let\@storyprogrammer\undefined
}

\newcommand{\@chkuserstorycmds}
{
\ifx\@storyname\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\storyname\space to continue}{}
\fi
\ifx\@storydescription\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\storydescription\space to continue}{}
\fi
\ifx\@storyuser\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\storyuser\space to continue}{}
\fi
\ifx\@storyiter\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\storyiter\space to continue}{}
\fi
\ifx\@storypriority\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\storypriority\space to continue}{}
\fi
\ifx\@storyrisk\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\storyrisk\space to continue}{}
\fi
\ifx\@storypoints\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\storypoints\space to continue}{}
\fi
\ifx\@storyprogrammer\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\storyprogrammer\space to continue}{}
\fi
\ifx\@storyobservation\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\storyobservation\space to continue}{}
\fi
}

\newcounter{storycnt}
\setcounter{storycnt}{0}
\newcommand*{\set@storylabel}[1]{\def\@storylabel{#1}}

\newenvironment{userstory}[1][tb:story\thestorycnt]
{
\@clruserstorycmds
\stepcounter{storycnt}
\set@storylabel{#1}
}
{
\@chkuserstorycmds
\begin{longtable}[c] {|l|l|}
\caption{Historia de usuario \# \thestorycnt}
\label{\@storylabel}\\ % the return here is mandatory

\hhline{*{2}{-}}
\multicolumn{2}{|l|}{\colorentry{\textbf{Historia de usuario}}}
\endfirsthead

\caption[]{Continuación de la página anterior}
\endhead

\multicolumn{2}{r}{{Continúa en la próxima página}} \\
\endfoot

\hline
\endlastfoot
\hhline{*{2}{-}}
\textbf{Número:} \thestorycnt & \textbf{Nombre:} \@storyname\\ \hline
\multicolumn{2}{|p{0.97\linewidth}|}{\textbf{Usuario:} \@storyuser} \\ \hline
\textbf{Prioridad en negocio:} \@storypriority & \textbf{Riesgo en desarrollo:} \@storyrisk\\ \hline
\textbf{Puntos estimados:} \@storypoints &  \textbf{Iteración asignada:} \@storyiter  \\ \hline
\multicolumn{2}{|p{0.97\linewidth}|}{\textbf{Programador responsable:} \@storyprogrammer} \\ \hline
\multicolumn{2}{|p{0.97\linewidth}|}{\textbf{Descripción:} \@storydescription}\\ \hline
\multicolumn{2}{|p{0.97\linewidth}|}{\textbf{Observaciones:} \@storyobservation}
\ifx\@storyinterface\undefined\relax
\else
\\ \hline
\multicolumn{2}{|p{0.97\linewidth}|}{\textbf{Interfaz:}\begin{center}\@storyinterface\end{center}}
\fi
\end{longtable}
}

\newcommand{\crcclass}[1]{\def\@crcclass{#1}}
\newcommand{\crcresp}[1]{\def\@crcresp{#1}}
\newcommand{\crccolab}[1]{\def\@crccolab{#1}}

\newcounter{crccnt}
\setcounter{crccnt}{0}
\newcommand*{\set@crclabel}[1]{\def\@crclabel{#1}}

\newcommand*{\@clrcrccardcmds}{
\let\@crcclass\undefined
\let\@crcresp\undefined
\let\@crccolab\undefined
}

\newcommand{\@chkcrccardcmds}
{
\ifx\@crcclass\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\crcclass\space to continue}{}
\fi
\ifx\@crcresp\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\crcresp\space to continue}{}
\fi
\ifx\@crccolab\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\crccolab\space to continue}{}
\fi
}

\newenvironment{crccard}[1][tb:crc\thecrccnt]
{
\@clrcrccardcmds
\stepcounter{crccnt}
\set@crclabel{#1}
}
{
\@chkcrccardcmds
\begin{longtable}[c] {|l|l|}
\caption{Tarjeta CRC \# \thecrccnt}
\label{\@crclabel}\\ % the return here is mandatory
\hhline{*{2}{-}}
\multicolumn{2}{|c|}{\colorentry{\textbf{Tarjeta CRC}}}
\endfirsthead

\caption[]{Continuación de la página anterior}
\endhead

\multicolumn{2}{r}{{Continúa en la próxima página}} \\
\endfoot

\hline
\endlastfoot
\hhline{*{2}{-}}
\multicolumn{2}{|l|}{\textbf{Clase:} \@crcclass} \\ \hline
\textbf{Responsabilidad} & \textbf{Colaboración} \\ \hline
\multicolumn{1}{|p{0.4\linewidth}|}{\vspace{-4ex}\begin{flushleft}\@crcresp \vspace{-2ex}\end{flushleft}} & \multicolumn{1}{p{0.4\linewidth}|}{\vspace{-4ex}\begin{flushleft}\@crccolab \vspace{-2ex}\end{flushleft}}
\end{longtable}
}


\newcounter{effortcnt}
\newcounter{tempitercnt}
\newcounter{globalitercnt}
\newcounter{temprowcnt}
\newcounter{currentrow}

\BeforeBeginEnvironment{effortestimation}{\setcounter{tempitercnt}{0}}
\BeforeBeginEnvironment{effortestimation}{\setcounter{globalitercnt}{1}}
\BeforeBeginEnvironment{effortestimation}{\setcounter{iterrowcnt}{0}}

\newcommand*{\set@effortestlabel}[1]{\def\@effortestlabel{#1}}

\newenvironment{effortestimation}[1][tb:effort\theeffortcnt]
{
\renewcommand{\tabcolsep}{1mm}
\stepcounter{effortcnt}
\set@effortestlabel{#1}
}
{
\begin{longtable}[c]{|c|c|m{.45\linewidth}|c|@{}c@{}}
\caption{Estimación de esfuerzo por historia de usuario}
\label{\@effortestlabel}\\ % the return here is mandatory
\hhline{*{4}{-}}
\colorentry{\textbf{Iteración}} & \multicolumn{2}{c|}{\colorentry{\textbf{Historias de usuario}}}&  \multicolumn{1}{c|}{\colorentry{\textbf{Puntos estimados (semanas)}}} % & \colorentry{\textbf{Puntos reales}}
\endfirsthead

\caption[]{Continuación de la página anterior}
\endhead

\cline{1-4}
\multicolumn{4}{r}{{Continúa en la próxima página}} \\
\endfoot

\hhline{*{4}{-}}
\endlastfoot

\chkiterations{1} % To guarantee there is at least one iteration previously declared.
\hhline{*{4}{-}}
\whileboolexpr{test{\ifnumcomp{\value{tempitercnt}}{<}{\csuse{iteramount}}}}%
{
\setcounter{temprowcnt}{0}
\stepcounter{tempitercnt}
\chkiterations{\thetempitercnt}
\setcounter{currentrow}{\csuse{iterstartingrow\thetempitercnt}}

\multirow{\csuse{itemsiniter\thetempitercnt}}{*}{\hskip-2ex \thetempitercnt}
\whileboolexpr{test{\ifnumcomp{\value{temprowcnt}}{<}{\csuse{itemsiniter\thetempitercnt}}}}%
{
& \theglobalitercnt \forlistcsloop{& \hskip1ex}{row\thecurrentrow} &
\stepcounter{temprowcnt}
\stepcounter{globalitercnt}
\stepcounter{currentrow}
\ifnum\thetemprowcnt=\csuse{itemsiniter\thetempitercnt} % horizontal lines depends on last row.
\ifnum\thetempitercnt=\csuse{iteramount}
\else
\\ \cline{1-4}
\fi
\else
\\ \cline{2-4}
\fi
}
}\\ \hhline{*{4}{-}}
\multicolumn{2}{|c|}{\textbf{Total}} &  & \hskip 1ex \textbf{\result} &%& 1
\end{longtable}
}

\newcounter{iterrowcnt}
\setcounter{iterrowcnt}{0}
\newcounter{foo}
\newcounter{itercounter}
\xdef\result{}
\FPeval{\result}{0}
\FPeval{\iterresult}{0}

\newcommand\addentry[3][]
{%
\setcounter{foo}{0}
\setcounter{itercounter}{0}
\stepcounter{iterrowcnt}%
\csxdef{rownames\theiterrowcnt}{#2}
\listcsadd{row\theiterrowcnt}{#2}
\listcsadd{row\theiterrowcnt}{#3}
\listcseadd{iter#1}{row\theiterrowcnt}
\FPeval{\result}{\result+#3}
\FPtrunc{\result}{\result}{1}

\ifinlistcs{iter#1}{totaliters}
{
\FPeval{\iterresult}{\iterresult+#3}
\FPtrunc{\iterresult}{\iterresult}{1}
}
{
\listcsadd{totaliters}{iter#1}
\csxdef{iterstartingrow#1}{\theiterrowcnt}
\FPeval{\iterresult}{#3}
\FPtrunc{\iterresult}{\iterresult}{1}
}
\csxdef{iterresult#1}{\iterresult}

\forlistcsloop{\stepcounter{foo}\listadd{\mylist}}{iter#1}
\csxdef{itemsiniter#1}{\thefoo} % this is the amount of rows in iter #1

\forlistcsloop{\stepcounter{itercounter}\listadd{\foolist}}{totaliters}
\csxdef{iteramount}{\theitercounter} % this is the amount of iterations

\csxdef{total}{\result}
\csxdef{auxtotal}{\result}
}

\newcommand{\chkiterations}[1]
{
\ifcsdef{iterstartingrow#1}
{}
{\PackageError{Thesis}{Missing iteration!!}{}}
}

\newcommand{\setiterresult}[2]
{
\FPeval{\tempresult}{0}
\chkiterations{#1}
\FPeval{\tempresult}{\csuse{total}-\csuse{iterresult#1}+#2}
\FPtrunc{\tempresult}{\tempresult}{1}
\csxdef{total}{\tempresult}
\csdef{iterresult#1}{#2}
}

\AfterEndEnvironment{iterationplan}{\csdef{total}{\csuse{auxtotal}}} % restoring initial result value

\newcounter{iterdurationcnt}
\newcommand*{\set@iterdurationlabel}[1]{\def\@iterdurationlabel{#1}}

\BeforeBeginEnvironment{iterationplan}{\setcounter{tempitercnt}{0}}
\BeforeBeginEnvironment{iterationplan}{\setcounter{globalitercnt}{1}}
\BeforeBeginEnvironment{iterationplan}{\setcounter{iterrowcnt}{0}}

\newcommand{\geniterationplan}[2][tb:iterduration\theiterdurationcnt]
{
\begin{iterationplan}[#1]
#2
\end{iterationplan}
}
\newenvironment{iterationplan}[1][tb:iterduration\theiterdurationcnt]
{
\renewcommand{\tabcolsep}{1mm}
\stepcounter{iterdurationcnt}
\set@iterdurationlabel{#1}
}
{
\begin{longtable}[c]{|c|c|m{.45\linewidth}|c|@{}c@{}}
\caption{Plan de duración de las iteraciones}
\label{\@iterdurationlabel}\\ % the return here is mandatory
\hhline{*{4}{-}}
\colorentry{\textbf{Iteración}} & \multicolumn{2}{c|}{\colorentry{\textbf{Historias de usuario}}}&  \multicolumn{1}{c|}{\colorentry{\textbf{Duración (semanas)}}}
\endfirsthead

\caption[]{Continuación de la página anterior}
\endhead

\cline{1-4}
\multicolumn{4}{r}{{Continúa en la próxima página}} \\
\endfoot

\hhline{*{4}{-}}
\endlastfoot
\chkiterations{1} % To guarantee there is at least one iteration previously declared.
\hhline{*{4}{-}}
\whileboolexpr{test{\ifnumcomp{\value{tempitercnt}}{<}{\csuse{iteramount}}}}%
{
\setcounter{temprowcnt}{0}
\stepcounter{tempitercnt}
\chkiterations{\thetempitercnt}
\setcounter{currentrow}{\csuse{iterstartingrow\thetempitercnt}}

\multirow{\csuse{itemsiniter\thetempitercnt}}{*}{\hskip-2ex \thetempitercnt}
& \theglobalitercnt & \csuse{rownames\thecurrentrow} & \multirow{\csuse{itemsiniter\thetempitercnt}}{*}{\csuse{iterresult\thetempitercnt}} &

\stepcounter{temprowcnt}
\stepcounter{globalitercnt}
\stepcounter{currentrow}

\ifnum\thetemprowcnt=\csuse{itemsiniter\thetempitercnt} % horizontal lines depends on last row.
\ifnum\thetempitercnt=\csuse{iteramount}
\else
\\ \cline{1-4}
\fi
\else
 \\ \cline{2-3}
\fi

\whileboolexpr{test{\ifnumcomp{\value{temprowcnt}}{<}{\csuse{itemsiniter\thetempitercnt}}}}%
{
& \theglobalitercnt & \csuse{rownames\thecurrentrow} &
\stepcounter{temprowcnt}
\stepcounter{globalitercnt}
\stepcounter{currentrow}
\ifnum\thetemprowcnt=\csuse{itemsiniter\thetempitercnt} % horizontal lines depends on last row.
\ifnum\thetempitercnt=\csuse{iteramount}
\else
 \\ \cline{1-4}
\fi
\else
 \\ \cline{2-3}
\fi
}
}\\ \hhline{*{4}{-}}
\multicolumn{2}{|c|}{\textbf{Total}} &  & \textbf{\csuse{total}} &%& 1
\end{longtable}
}

\preto{\geniterationplan}{\setcounter{tempitercnt}{0}}
\preto{\geniterationplan}{\setcounter{globalitercnt}{1}}
\preto{\geniterationplan}{\setcounter{iterrowcnt}{0}}

\newcounter{engtaskcnt}
\setcounter{engtaskcnt}{0}
\newcounter{devtaskcnt}
\setcounter{devtaskcnt}{0}
\newbool{devtask}
\boolfalse{devtask}
\newcommand*{\set@taskcnt}[1]{\def\@taskcnt{#1}}

\newcommand*{\set@engtasklabel}[1]{\def\@engtasklabel{#1}}
\newcommand*{\set@caption}[1]{\def\@tablecaption{#1}}
\newcommand*{\engtaskuserstory}[1]{\def\@engtaskuserstory{#1}}
\newcommand*{\devtaskuserstory}[1]{\engtaskuserstory{#1}}

\newcommand*{\engtaskname}[1]{\def\@engtaskname{#1}}
\newcommand*{\devtaskname}[1]{\engtaskname{#1}}

\newcommand*{\engtasktype}[1]{\def\@engtasktype{#1}}
\newcommand*{\devtasktype}[1]{\engtasktype{#1}}

\newcommand*{\engtaskpointestimation}[1]{\def\@engtaskpointestimation{#1}}
\newcommand*{\devtaskpointestimation}[1]{\engtaskpointestimation{#1}}

\newcommand*{\engtaskstartdate}[3]
{
\def\@engtaskstartdate{true}
\newdate{startdate}{#1}{#2}{#3}
}
\newcommand*{\devtaskstartdate}[3]{\engtaskstartdate{#1}{#2}{#3}}

\newcommand*{\engtaskenddate}[3]
{
\def\@engtaskenddate{true}
\newdate{enddate}{#1}{#2}{#3}
}
\newcommand*{\devtaskenddate}[3]{\engtaskenddate{#1}{#2}{#3}}

\newcommand*{\engtaskprogrammer}[1]{\def\@engtaskprogrammer{#1}}
\newcommand*{\devtaskprogrammer}[1]{\engtaskprogrammer{#1}}

\newcommand*{\engtaskdescription}[1]{\def\@engtaskdescription{#1}}
\newcommand*{\devtaskdescription}[1]{\engtaskdescription{#1}}

\newcommand*{\@clrengtaskcmds}
{
\let\@engtasklabel\undefined
\let\@engtaskuserstory\undefined
\let\@engtaskname\undefined
\let\@engtasktype\undefined
\let\@engtaskpointestimation\undefined
\let\@engtaskstartdate\undefined
\let\@engtaskenddate\undefined
\let\@engtaskprogrammer\undefined
\let\@engtaskdescription\undefined
}

\newcommand{\@chkengtaskcmds}
{
\ifx\@engtaskuserstory\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\engtaskuserstory\space to continue}{}
\fi
\ifx\@engtaskname\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\engtaskname\space to continue}{}
\fi
\ifx\@engtasktype\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\engtasktype\space to continue}{}
\fi
\ifx\@engtaskpointestimation\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\engtaskpointestimation\space to continue}{}
\fi
\ifx\@engtaskstartdate\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\engtaskstartdate\space to continue}{}
\fi
\ifx\@engtaskenddate\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\engtaskenddate\space to continue}{}
\fi
\ifx\@engtaskdescription\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\engtaskdescription\space to continue}{}
\fi
}

\newenvironment{engineeringtask}[1][tb:engtask\theengtaskcnt]
{
\ifbool{devtask}{\stepcounter{devtaskcnt}}{\stepcounter{engtaskcnt}}
\ifboolexpr{test{\ifnumcomp{\value{devtaskcnt}}{>}{0}} and test{\ifnumcomp{\value{engtaskcnt}}{>}{0}}}
{
\PackageWarning{Thesis}{You are using development and engineering tasks at the same time. Check it out!!}{}
}{}

\@clrengtaskcmds
\set@engtasklabel{#1}
\set@caption{Tarea de ingeniería \# \theengtaskcnt}
\set@taskcnt{\theengtaskcnt}
}
{
\@chkengtaskcmds
\begin{longtable}[c] {|l|l|}
\caption{\@tablecaption}
\label{\@engtasklabel}\\ % the return here is mandatory

\hhline{*{2}{-}}
\multicolumn{2}{|l|}{\colorentry{\textbf{Tarea}}}
\endfirsthead

\caption[]{Continuación de la página anterior}
\endhead

\multicolumn{2}{r}{{Continúa en la próxima página}} \\ \hhline{*{2}{-}}
\endfoot

\hline
\endlastfoot

\hhline{*{2}{-}}
\textbf{Número de tarea:} \@taskcnt  & \textbf{Número de Historia de usuario:} \@engtaskuserstory \\ \hline
\multicolumn{2}{|p{0.8\linewidth}|}{\textbf{Nombre de la tarea:} \@engtaskname} \\ \hline
\textbf{Tipo de tarea:} \@engtasktype  & \textbf{Puntos estimados:} \@engtaskpointestimation \\ \hline
\textbf{Fecha de inicio:} \displaydate{startdate} &  \textbf{Fecha de fin:} \displaydate{enddate}
\ifx\@engtaskprogrammer\undefined\relax
\\ \hline
\else
\\ \hline
\multicolumn{2}{|p{0.8\linewidth}|}{\textbf{Programador responsable:} \@engtaskprogrammer} \\ \hline
\fi
\multicolumn{2}{|p{0.8\linewidth}|}{\textbf{Descripción:} \@engtaskdescription}\\
\end{longtable}
}

\newenvironment{developmenttask}[1][]
{
\booltrue{devtask}
\begin{engineeringtask}[#1]
\set@caption{Tarea de desarrollo \# \thedevtaskcnt}
\set@taskcnt{\thedevtaskcnt}
}
{
\end{engineeringtask}
}


\newcounter{testcasecnt}
\setcounter{testcasecnt}{0}

\newcommand*{\set@testcaselabel}[1]{\def\@testcaselabel{#1}}
\newcommand*{\testcasecode}[1]{\def\@testcasecode{#1}}
\newcommand*{\testcaseuserstory}[1]{\def\@testcaseuserstory{#1}}
\newcommand*{\testcasename}[1]{\def\@testcasename{#1}}
\newcommand{\testcaseexeccond}[1]{\def\@testcaseexeccond{#1}}
\newcommand{\testcaseexecstep}[1]{\def\@testcaseexecstep{#1}}
\newcommand*{\testcasedescription}[1]{\def\@testcasedescription{#1}}
\newcommand*{\testcaseexpresult}[1]{\def\@testcaseexpresult{#1}}

\newcommand*{\@clrtestcasecmds}
{
\let\@testcaselabel\undefined
\let\@testcasecode\undefined
\let\@testcaseuserstory\undefined
\let\@testcasename\undefined
\let\@testcaseexeccond\undefined
\let\@testcaseexecstep\undefined
\let\@testcasedescription\undefined
\let\@testcaseexpresult\undefined
}

\newcommand{\@chktestcasecmds}
{
\ifx\@testcasecode\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\testcasecode\space to continue}{}
\fi
\ifx\@testcaseuserstory\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\testcaseuserstory\space to continue}{}
\fi
\ifx\@testcasename\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\testcasename\space to continue}{}
\fi
\ifx\@testcaseexeccond\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\testcaseexeccond\space to continue}{}
\fi
\ifx\@testcaseexecstep\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\testcaseexecstep\space to continue}{}
\fi
\ifx\@testcasedescription\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\testcasedescription\space to continue}{}
\fi
\ifx\@testcaseexpresult\undefined\relax
\PackageError{Thesis}{You need to define the command \protect\testcaseexpresult\space to continue}{}
\fi
}

\newenvironment{acceptancetest}[1][tb:testcase\thetestcasecnt]
{
\@clrtestcasecmds
\stepcounter{testcasecnt}
\set@testcaselabel{#1}
}
{
\@chktestcasecmds
\begin{longtable}[c] {|l|l|}
\caption{Prueba de aceptación \# \thetestcasecnt}
\label{\@testcaselabel}\\ % the return here is mandatory

\hhline{*{2}{-}}
\multicolumn{2}{|l|}{\colorentry{\textbf{Caso de prueba de aceptación}}}
\endfirsthead

\caption[]{Continuación de la página anterior}
\endhead

\multicolumn{2}{r}{{Continúa en la próxima página}} \\
\endfoot

\hline
\endlastfoot

\hhline{*{2}{-}}
\multicolumn{1}{|p{0.4\linewidth}|}{\textbf{Código:} \@testcasecode} & \textbf{Historia de usuario:} \@testcaseuserstory\\ \hline
\multicolumn{2}{|p{0.8\linewidth}|}{\textbf{Nombre:} \@testcasename} \\ \hline
\multicolumn{2}{|p{0.8\linewidth}|}{\textbf{Descripción:} \@testcasedescription} \\ \hline
\multicolumn{2}{|p{0.8\linewidth}|}{\textbf{Condiciones de ejecución:}\vspace{-2ex}
 \begin{flushleft}
\@testcaseexeccond
\vspace{-2ex}
\end{flushleft}} \\ \hline
\multicolumn{2}{|p{0.8\linewidth}|}{\textbf{Pasos de ejecución:}\vspace{-2ex}
\begin{flushleft}\@testcaseexecstep \vspace{-2ex} \end{flushleft}}\\ \hline
\multicolumn{2}{|p{0.8\linewidth}|}{\textbf{Resultados esperados:} \@testcaseexpresult}
\end{longtable}
}

\AtEndDocument
{
\printglossary
\printglossary[type=\acronymtype, toctitle=Acrónimos, title=Acrónimos]
\printbibliography[heading=bibintoc, title=Referencias bibliográficas]
\vfill
\medskip
\settimeformat{ampmtime}
\centerline{Generado con \LaTeX{}: \today{}: \currenttime}
\clearpage
\ifboolexpr{bool{annex}}
{
\bookmarksetupnext{level=part}
\appendix
\addappheadtotoc
\@setplainstyle
\newgeometry{margin=\marginspace, includefoot}
\appendixpage
\restoregeometry
\@setheading
\pagestyle{fancy}
\ifdef{\set@addendum}
{
  \set@addendum
}{}
\clearpage
\set@appendices
}{}
}

\SetWatermarkText{Borrador}
\SetWatermarkScale{1.2}
\SetWatermarkLightness{0.9}
\fboxrule=1pt  % rule width
\fboxsep=1pt
\newcommand{\@predefensetext}{\resizebox{!}{15pt}{\fcolorbox{black}{blue!90}{\textcolor{yellow}{Pre-defensa [compilación digital]}}}}
\newcommand\@predefensestamp{%
\begin{textblock}{2}(-0.09,0.55)
\begin{rotate}{90}
\@predefensetext
\end{rotate}
\end{textblock}
}

\DeclareOption{predefense}
{
\AddEverypageHook{\@predefensestamp}
\ifoptionfinal{}
{
\@option@finaltrue  % from package ifdraft
\renewcommand{\@todo}[2][]{}
\@sc@wm@stampfalse  % from package draftwatermark
}
}
\ProcessOptions\relax
\endinput
%%
%% End of file `thesis.cls'.
