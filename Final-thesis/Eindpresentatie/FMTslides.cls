\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FMTslides}[2009/12/02 v1.0 Marks modified beamer class]

\LoadClass{beamer}

\RequirePackage{relsize}
\RequirePackage[absolute, overlay]{textpos}
\RequirePackage{ifthen}

\usetheme{Warsaw}
\TPGrid[3mm,9mm]{10}{5} 

\newlength{\navigationwidth}
\settowidth{\navigationwidth}{......}
\addtolength{\navigationwidth}{-2\navigationwidth}
\addtolength{\navigationwidth}{\paperwidth}
\setbeamertemplate{headline}{
  \begin{beamercolorbox}{title in head/foot}
    \vskip2pt\color{black}...\color{white}\insertnavigation{\navigationwidth}\color{black}...\color{white}\vskip2pt
  \end{beamercolorbox}%
}

\setbeamertemplate{navigation symbols}{}
\setbeamercolor{alerted text}{fg=blue!100!black}
\setbeamercolor{title in head/foot}{bg=black}
\setbeamercolor{section in head/foot}{bg=black!92.5}
\setbeamercolor{date in head/foot}{bg=black!85}
\setbeamercolor{frametitle}{fg=white,bg=blue!50!black}
\setbeamercolor{block title}{bg=blue!50!black} 

\setbeamertemplate{footline}
{
  \hbox{%
  \begin{beamercolorbox}[wd=.25\paperwidth,ht=2.25ex,dp=1ex,left]{title in head/foot}%
    \usebeamerfont{title in head/foot}\centering \vspace{-0.02cm}\includegraphics[scale=0.23, clip, trim=26.8 30.2 40.2 34]{logoblack.pdf}
  \end{beamercolorbox}%
   \begin{beamercolorbox}[wd=.48\paperwidth,ht=2.25ex,dp=1ex,center]{section in head/foot}%
    \usebeamerfont{title in head/foot}\insertshorttitle
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.27\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
    \usebeamerfont{title in head/foot}
    \insertdate \ \ \ \ \ \insertframenumber{} / \inserttotalframenumber\hspace*{2ex} 
  \end{beamercolorbox}}%
  \vskip0pt%
}

\newsavebox{\conferencebox}
\newcommand{\conference}[1]{\sbox{\conferencebox}{\color{white}\smaller#1}}
\newcommand{\insertconference}{\usebox{\conferencebox}}

\newboolean{onecoauthor}
\newboolean{twocoauthors}
\newboolean{threecoauthors}

\newsavebox{\coauthorbox}
\newsavebox{\coauthorsbox}

\newcommand{\coauthor}[1]{%
\ifthenelse{\boolean{twocoauthors}}{
       \sbox{\coauthorsbox}{\color{white}\smaller\it\usebox{\coauthorsbox}, and #1}
       \setboolean{threecoauthors}{true}
     }{
  \ifthenelse{\boolean{onecoauthor}}{
           \sbox{\coauthorsbox}{\color{white}\smaller\it#1}
           \setboolean{twocoauthors}{true}
   }{
    \sbox{\coauthorbox}{\color{white}\smaller\it#1}
    \setboolean{onecoauthor}{true}
}}
}
\newcommand{\insertcoauthor}{\usebox{\coauthorbox}}
\newcommand{\insertcoauthors}{\usebox{\coauthorsbox}}

\newcommand{\makecontentsslide}{
   \begin{frame}
   \frametitle{Contents}
   \tableofcontents
   \end{frame}
}

\newcommand{\maketitleslide}{
	\usebackgroundtemplate{\includegraphics[width=\paperwidth]{voorkant.png}}

	\begin{frame}[plain]
		\begin{textblock}{5.2}(2.6,1.83)
			\color{white}
			\fontfamily{phv}\fontseries{bc}\fontshape{n}\selectfont \larger
			\inserttitle
		\end{textblock}

		\begin{textblock}{10}(-0.2,-0.65)
			\color{white}
			\includegraphics[scale=0.482]{logoblack.pdf}\\*
			\vspace{-0.4cm}\hspace{0.98cm}Formal Methods \& Tools.
			\color{black}
		\end{textblock}

		\begin{textblock}{7}(4.1,3.13)
			\color{white}
			\insertauthor\\*
			\hspace{0.55cm}\insertdate
			\color{black}
		\end{textblock}
		
		\begin{textblock}{5}(4.6,5)
			\color{white}\it\smaller%
			\ifthenelse{\boolean{threecoauthors}}{%
			         Joint work with \insertcoauthor,\\
			        \insertcoauthors
			}{
			\ifthenelse{\boolean{twocoauthors}}{%
			         Joint work with \\
			         \insertcoauthor\ and \insertcoauthors
			}{
			\ifthenelse{\boolean{onecoauthor}}{
			      \color{black}J\color{white}\\
			      Joint work with \insertcoauthor
			      \color{black}
			}}{}
			}
		\end{textblock}

		\begin{textblock}{4.7}(0.1,5.25)
			\insertconference
		\end{textblock}
	\end{frame}
	\color{black}
	\usebackgroundtemplate{}
}
