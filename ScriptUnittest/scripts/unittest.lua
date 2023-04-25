--[[
    Unittest functionality, see description in main.lua for details
--]]

--Start of Global Scope---------------------------------------------------------


-- Global table to hold all unittests
local unittest = {
  tests = {}
  }

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

 -- Adding test function
function unittest.addTest(testPath, testFunction)
  table.insert(unittest.tests, {path = testPath, func = testFunction})
end

-- Running all unittests sequencially. The function stopps if one test fails
local function runUnittest()
  local bSuccess = false
  local sFailedPath = ""
  for i,v in ipairs(unittest.tests) do
    bSuccess = v.func()
    if not bSuccess then
      sFailedPath = v.path
      break
    end
  end
  return _APPNAME, bSuccess, sFailedPath
end
Script.serveFunction("ScriptUnittest.runUnittest", runUnittest)

return unittest
--End of Function and Event Scope-----------------------------------------------
