--[[----------------------------------------------------------------------------

  Application Name:
  ScriptUnittestRunner

  Summary:
  Running the defined unittests

  Description:
  This app is part of the ScriptUnittest sample. It triggers the runUnittest function
  from the ScriptUnittest App. This sample can also be used to trigger unittests from
  multiple apps

  How to run:
  To show this sample it is also required to run both, this App and the ScriptUnittest App.
  Clicking the "Start Unittest" button on the user interface prints the according message
  to the console.

  Implementation:
  To add unittests from other apps, their according CROWN can be added to the tests table.
  All unittests are then run, but each test is stopped when the test fails.
  In order to work, the served function must follow the Syntax CROWNname.runUnittest

------------------------------------------------------------------------------]]
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
