--[[----------------------------------------------------------------------------

  Application Name:
  ScriptUnittest

  Summary:
  Showing basic option for unittesting scripts

  Description:
  This sample shows an approach to unittest script functions. It has two exemplary
  modules and this 'main' script. The actual unittest functionality is found in the
  script Unittest. The two exemplary modules containing a function and their according
  test function. The test function is then added to the unittest. The whole unittest runs
  after calling the rununittest function. The test stops at the position where it failed
  and returns the failing path in that case.

  How to run:
  The sample can be run on the emulator. The tests are triggered from another App.
  Therefore both this App and 'ScriptUnittestRunner' have to be running on the device.
  The 'ScriptUnittestRunner' comes with a user interface where the unittest(s) can be
  started with a button click. The results are printed to the console.

  Implementation:
  To embed in other applications,
  1. Copy the unittest.lua into the application to test
  2. Require the unittest.lua in the scripts which should be tested (or in parent)
  3. Write the test functions that return true/false
  4. Add the test functions to the unittest by calling unittest.addTest
  5. Edit the serve of the 'runUnittest' function in the unittest.lua and add the serve to
     the Apps properties with the parameters:
       name: appName,  type: string, multiplicity: 1
       name: result,   type: bool,   multiplicity: 1
       name: failPath, type: string, multiplicity: ?
  6. Run the unittest by calling the served 'runUnittest' function
     (e.g. with the App 'ScriptUnittestRunner')

------------------------------------------------------------------------------]]

--Start of Global Scope---------------------------------------------------------

-- Adding the sub-modules of this app
local moduleA = require "modules/submoduleA"
local moduleB = require "modules/submoduleB"

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

--Declaration of the 'main' function as an entry point for the event loop
local function main()
  -- Some app calculation:
  local appResult = moduleA.myInternalFunctionA() + moduleB.myInternalFunctionB()
  print("MyAppResult: " .. appResult)
end
--The following registration is part of the global scope which runs once after startup
--Registration of the 'main' function to the 'Engine.OnStarted' event
Script.register("Engine.OnStarted", main)

--End of Function and Event Scope-----------------------------------------------







