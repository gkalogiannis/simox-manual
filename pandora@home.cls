\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pandora@home}[2016/01/24]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax
\LoadClass[a4paper, twoside, 11pt]{article}

% Load packages
\RequirePackage[headheight=13.6pt, top=3.5cm, bottom=3.5cm, left=3.5cm, right=3.5cm]{geometry}
\RequirePackage{charter}
\RequirePackage{tikz} % for tikzpicture and drawing trees etc
\RequirePackage{fancyhdr}
\RequirePackage{float} % For floats staying here etc % For floats staying here etc


% Define the styles for headers
\fancypagestyle{plain}{%
  \renewcommand{\headrulewidth}{0pt}%
  \fancyhf{}%
  \fancyfoot[C]{}%
}
\fancypagestyle{myheaders}{%
  \renewcommand{\headrulewidth}{0.05 mm}%
  \fancyhead[RO,LE]{\thepage}
  \fancyhead[RE]{Title1}
  \fancyhead[LO]{\textsc{\nouppercase{\leftmark}}}
  %\fancyhead[RE]{\@title}
  \fancyfoot[L,R,C]{}
}

% Define the commands for title and authors
\renewcommand\title[1]{\def\@title{#1}}
\newcommand\authors[1]{\def\@authors{#1}}

% Define rules for the title page
\newcommand{\HRule}{\rule{\linewidth}{0.65mm}}
\newcommand{\LRule}{\rule{\linewidth}{0.3mm}}

\linespread{1.5} % Line spacing

\AtBeginDocument
{
% Title page
\pagestyle{plain} % title page has no headers
\begin{center}

% Print organisation
\textsc{\large Title1}\\
\textsc{\large Title2}\\
\textsc{\large Title3}\\
\textsc{\large Title4}\\[3.5cm]

% Print title
{\LARGE abcd}\\[0.5cm] % a subtitle

\HRule \\[0.4cm]
{ \huge \bfseries {\@title} }\\[0.2cm] % Title of your document
\HRule \\[2.2cm]
\end{center}

% Print authors to the right
\begin{flushright}
\Large \emph{Author(s):}\\
\textbf{\@authors}\\[1cm]
\end{flushright}

%\vspace*{\fill}
\vfill
% Print place
\begin{center}
\normalsize{Thessaloniki}\\
{\large \today} % Date, change the \today to a set date if you want to be precise
\end{center}


\pagebreak
\pagestyle{myheaders}
}

\AtEndDocument
{
  \bibliographystyle{plain}
  \bibliography{pandora@home} 
}

