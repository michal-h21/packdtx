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
if dtx ==nil then
  print "No .packdtx or packdtx.conf found"
  return
end
dtx.date=dtx.date or os.date('%Y/%m/%d')
--local tplFile=kpse.find_file("dtx-template.tex","lua")
local tplFile=string.gsub(arg[0],"packdtx.lua","dtx.tpl")
local insFile=string.gsub(arg[0],"packdtx.lua","ins.tpl")
local template= io.open(tplFile)
local ins=io.open(insFile)

if template then
  --print("Loading template")
  local out = io.output(dtx.package..".dtx") 
  if out then
    prep(template)
  else
    print("Cannot open output file "..dtx.package..".dtx")
  end
  io.output(dtx.package..".ins")
  prep(ins) 
else
  print("Template not found")
end
