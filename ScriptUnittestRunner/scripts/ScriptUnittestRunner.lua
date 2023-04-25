
--Start of Global Scope---------------------------------------------------------


-- Variable to hold all Apps(CROWNs) which have a served runUnittest function
-- To add another App serve the runUnittestFunction in that app under their namespace
-- Then adding the value to the 'tests' table e.g. {MyAppOne,MyAppTwo}

local tests = {ScriptUnittest} --luacheck: ignore

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

-- Function is triggered from UI
-- all 'runUnittest' functions from the specified CROWNs in tests are run.
-- each test stops at the failing function.
local function runTests()
  for i = 1, #tests do
    local appName, result, failPath = tests[i].runUnittest()
    if result then
      print(appName .. ': Unittest passed')
    else
      print(appName .. ': Unittest failed in path: ' .. failPath)
    end
  end
end
-- Serving function for user interface button
Script.serveFunction('ScriptUnittestRunner.runTests', runTests)

--End of Function and Event Scope-----------------------------------------------
