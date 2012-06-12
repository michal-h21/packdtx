% \iffalse meta-comment
%
% Copyright (C) 2012 by $(dtx.author) <$(dtx.email)>
% ---------------------------------------------------------------------------
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this work is <+maintainer+>.
%
% This work consists of the files $(dtx.package).dtx and $(dtx.package).ins
% and the derived filebase $(dtx.package).sty.
%
% \fi
%
% \iffalse
%<*driver>
\ProvidesFile{$(dtx.package).dtx}
%</driver>
%<package>\NeedsTeXFormat{LaTeX2e}[1999/12/01]
%<package>\ProvidesPackage{$(dtx.package)}
%<*package>
    [$(dtx.date) Version $(dtx.version) $(dtx.description)]
%</package>
%
%<*driver>
\documentclass{ltxdoc}
\usepackage{$(dtx.package)}[$(dtx.date)]
\EnableCrossrefs
\CodelineIndex
\RecordChanges
\begin{document}
  \DocInput{$(dtx.package).dtx}
  \PrintChanges
  \PrintIndex
\end{document}
%</driver>
% \fi
%
% \CheckSum{104}
%
% \CharacterTable
%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%   Digits        \0\1\2\3\4\5\6\7\8\9
%   Exclamation   \!     Double quote  \"     Hash (number) \#
%   Dollar        \$     Percent       \%     Ampersand     \&
%   Acute accent  \'     Left paren    \(     Right paren   \)
%   Asterisk      \*     Plus          \+     Comma         \,
%   Minus         \-     Point         \.     Solidus       \/
%   Colon         \:     Semicolon     \;     Less than     \<
%   Equals        \=     Greater than  \>     Question mark \?
%   Commercial at \@     Left bracket  \[     Backslash     \\
%   Right bracket \]     Circumflex    \^     Underscore    \_
%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%   Right brace   \}     Tilde         \~}
%
%
% \changes{<+version+>}{<+date+>}{Converted to DTX file}
%
% \DoNotIndex{\newcommand,\newenvironment}
%
% \providecommand*{\url}{\texttt}
% \GetFileInfo{$(dtx.package).dtx}
% \title{The \textsf{$(dtx.package)} package}
% \author{$(dtx.author) \\ \url{$(dtx.email)}}
% \date{$(dtx.version)~from $(dtx.date)}
%
% \maketitle
%
#for v,k in pairs(dtx.documentation) do
#local f = io.open(k,"r")
#for line in f:lines() do
#io.write("% "..line.."\n")
#end
#end
% \StopEventually{}
%
% \section{Implementation}
%
#for k,v in pairs(dtx.packages) do
% \iffalse
%<*$(k)>
% \fi

#local f= io.open(v)
# io.write(f:read("*a"))

% \iffalse
%</$(k)>
% \fi
#end

%
% \Finale
\endinput
