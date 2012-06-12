\input docstrip.tex
\keepsilent
#for k,v in pairs(dtx.packages) do
\generate{\file{$(v)}{\from{$(dtx.package).dtx}{$(k)}}}
#end
\endbatchfile
