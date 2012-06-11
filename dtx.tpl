% \iffalse The license starting three lines down applies to this file
%<*batchfile>
{\obeylines\obeyspaces \gdef\thepreamble{
Copyright (C) 2011 by $(dtx.author)

This file may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either
version 1.3c of this license or (at your option) any later
version.  The latest version of this license is in:

    http://www.latex-project.org/lppl.txt

and version 1.3c or later is part of all distributions of
LaTeX version 2005/12/01 or later.

This work has the LPPL maintenance status 'maintained'.

The Current Maintainer of this work is $(dtx.author).

This work consists of $(dtx.package).dtx and the derived file
$(dtx.package).sty.
}}
\begingroup
\input docstrip
\keepsilent
\usedir{tex/latex/\jobname}
\expandafter\preamble\thepreamble\endpreamble
\askforoverwritefalse
\generate{\file{\jobname.sty}{\f% \iffalse
%<*package>
% \firom{\jobname.dtx}{}}}
\endgroup
\documentclass{ltxdoc}
\usepackage{\jobname}
\usepackage[margin=1.5in]{geometry}
\usepackage[pdfborder={0 0 0}]{hyperref}

\CheckSum{0}
\CharacterTable
 {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
  Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
  Digits        \0\1\2\3\4\5\6\7\8\9
  Exclamation   \!     Double quote  \"     Hash (number) \#
  Dollar        \$     Percent       \%     Ampersand     \&
  Acute accent  \'     Left paren    \(     Right paren   \)
  Asterisk      \*     Plus          \+     Comma         \,
  Minus         \-     Point         \.     Solidus       \/
  Colon         \:     Semicolon     \;     Less than     \<
  Equals        \=     Greater than  \>     Question mark \?
  Commercial at \@     Left bracket  \[     Backslash     \\
  Right bracket \]     Circumflex    \^     Underscore    \_
  Grave accent  \`     Left brace    \{     Vertical bar  \|
  Right brace   \}     Tilde         \~}

\DoNotIndex{\def}

\EnableCrossrefs
\CodelineIndex
\RecordChanges
\GetFileInfo{\jobname.sty}
\title{The \textsf{\jobname} package\thanks{This document
corresponds to \textsf{\jobname}~\fileversion, dated \filedate.}}
\author{$(dtx.author)\\\texttt{$(dtx.email)}}

\begin{document}
\maketitle

\phantomsection
\addcontentsline{toc}{section}{\abstractname}
\begin{abstract}
The \textsf{\jobname} package $(dtx.name).
\end{abstract}

\phantomsection
\addcontentsline{toc}{section}{\contentsname}
\tableofcontents

\section{Introduction}
The \textsf{\jobname} package $(dtx.name)

\section{Usage}
XXX

\StopEventually{
        \typeout{**************************************************}
        \typeout{*}
        \typeout{* To finish the installation, you have to move the}
        \typeout{* following file into a directory searched by TeX:}
        \typeout{*}
        \typeout{* \space\space \jobname.sty}
        \typeout{*}
        \typeout{* Documentation is in \jobname.\ifpdf pdf\else dvi\fi.}
        \typeout{*}
        \typeout{* Happy TeXing!}
        \typeout{**************************************************}
        \end{document}
}
\clearpage
\DocInput{\jobname.dtx}
\clearpage
\phantomsection
\addcontentsline{toc}{section}{Change History}
\PrintChanges
\phantomsection
\addcontentsline{toc}{section}{Index}
\PrintIndex
\Finale
%</batchfile>
% \fi
%
% \section{Implementation}
#for k,v in pairs(dtx.packages) do
% \iffalse
%<*$(k)>
% \fi

#local f= io.open(v)
# print(f:read("*a"))

% \iffalse
%</$(k)>
% \fi
#end

% \iffalse
%<*package>
% \fi
