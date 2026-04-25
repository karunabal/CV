% Custom CV Document Class - Single Column ATS-Friendly Version

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{karthicv-single}[2023/08/22 CV Document Class - Single Column]

% Load required packages
\LoadClass[a4paper]{article}
\RequirePackage[left=2cm, right=2cm, top=2cm, bottom=2cm]{geometry}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{amsmath}
\RequirePackage{helvet}
\RequirePackage{xhfill}

% Define CV colors
\definecolor{primarycolor}{RGB}{65, 105, 225}
\definecolor{secondarycolor}{RGB}{176, 196, 222}
\definecolor{linkcolor}{RGB}{0, 102, 204}

% Set fonts
\renewcommand{\familydefault}{\sfdefault}
%\renewcommand{\sfdefault}{Helvetica}

% Define user-specific information (these are placeholders)
\newcommand{\cvname}{Peter Pan}
\newcommand{\cvemail}{panthepeter@jollyrogger.com}
\newcommand{\cvphone}{(123) 456-7890}
\newcommand{\cvaddress}{Neverland}
\newcommand{\cvwebpage}{www.jollyrogger.com}
\newcommand{\cvheadline}{Tinker Bell's Last Love}

% Customize the header
\renewcommand{\maketitle}{%
  \begin{center}
    \color{primarycolor}\huge\textbf{\cvname} \\
    \vspace{5pt}
    \color{primarycolor}\normalsize\textit{\cvheadline}\\
    \vspace{5pt}
    {\color{secondarycolor} \hrule}
    \vspace{5pt}
    \color{primarycolor}\normalsize\textit{\cvemail \quad \text{\textbar} \quad \cvphone \quad \text{\textbar} \quad \cvwebpage \quad \text{\textbar} \quad \cvaddress} 
    \vspace{5pt}
    {\color{secondarycolor} \hrule}
  \end{center}
  \vspace{10pt}
}

% Customize section headings
\usepackage{titlesec}

\titleformat{\section}
  {\color{primarycolor}\Large\bfseries}
  {}
  {0em}
  {}
\titleformat{\subsection}
  {\color{secondarycolor}\large\bfseries}
  {}
  {0em}
  {}
\titleformat{\subsubsection}[runin]
  {\normalfont\bfseries}
  {}
  {0em}
  {}

% Increase section spacing for better readability
\titlespacing{\section}{0pt}{10pt}{5pt}

% Define a command for itemized lists with custom symbols
\newcommand{\cventry}[2]{\noindent \textbf{#1} \hfill \textbf{#2}}

% Define a command for skills
\newcommand{\skill}[2]{\item \textbf{#1:} #2}

% Define a command for education entries
\newcommand{\education}[5]{%
  \cventry{#1}{#2} \\ \cventry{#3}{#4}\\
  \textit{#5} \\
}

% Define a command for work experience entries
\newcommand{\experience}[5]{%
  {\color{secondarycolor} \hrule}
  \vspace{4pt} 
  \cventry{#1}{#2} \\ 
  \cventry{#3}{#4} 
  \vspace{4pt} 
  {\color{secondarycolor} \hrule}
  \vspace{4pt} 
  \noindent \textit{#5} \\
}

% Define a command for projects
\newcommand{\project}[3]{%
  \cventry{#1}{#2} \\ \hfill #3 \\
}

% Hyperlink setup
\hypersetup{
  colorlinks=true,
  linkcolor=linkcolor,
  urlcolor=linkcolor,
}

% End of class file
\endinput