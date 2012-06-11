kpse.set_program_name("luatex")

--Simple Lua Preprocessor
--http://lua-users.org/wiki/SimpleLuaPreprocessor
function prep(file)
  local chunk = {n=0}
  for line in file:lines() do
     if string.find(line, "^#") then
      table.insert(chunk, string.sub(line, 2) .. "\n")
     else
      local last = 1
      for text, expr, index in string.gfind(line, "(.-)$(%b())()") do 
        last = index
        if text ~= "" then
          table.insert(chunk, string.format('io.write %q ', text))
        end
        table.insert(chunk, string.format('io.write%s ', expr))
      end
      table.insert(chunk, string.format('io.write %q\n',
                                         string.sub(line, last).."\n"))
    end
  end
  return loadstring(table.concat(chunk))()
end

function loadConf()
  local file = io.open(".packdtx","r") or io.open("packdtx.conf","r")
  if file then
     return loadstring('return {'..file:read("*a").."}")()
    --return (loadstring(" return "..file:read("*a")))()
  else
    return nil
  end
end


dtx=loadConf()
--local tplFile=kpse.find_file("dtx-template.tex","lua")
tplFile=string.gsub(arg[0],"packdtx.lua","dtx.tpl")
local template= io.open(tplFile)
if template then
  --print("Loading template")
  l=prep(template)
else
  print("Template not found")
end

