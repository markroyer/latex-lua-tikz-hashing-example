--[[
#1 index
#2 value
#3 color
--]]
function arraySlot(i,v,c)
   return
      "\\filldraw[color="..(c or "white")..",draw=black] ("..i..",0) rectangle ("..i.."+1,1);" ..
      "\\draw ("..i.."+.5,.5) node[scale=2, transform shape] (value"..i..") {"..v.."};" ..
      "\\draw ("..i.."+.5,-.2) node[scale=.8, transform shape] (index"..i..") {"..i.."};"
end

--[[
#1 List of array valuse
#2 The index of the array to highlight
#3 A label used for the array diagram
--]]
function displayArray(list,indexHighlight,tableLabel)
   local result = ""
   for i, v in ipairs(list) do
      result = result .. arraySlot(i-1,list[i],((i-1)==indexHighlight and "yellow" or "white"))
   end
   result = result .. "\\node[above of=value0] (mylabel) {" .. tableLabel .. "};"
   return result
end
