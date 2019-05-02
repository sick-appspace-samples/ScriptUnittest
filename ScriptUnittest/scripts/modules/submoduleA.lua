local unittest = require "unittest"

-- Function --------------------------------------------------------------------

local function myInternalFunctionA()
  -- This function calculates something
  return 42
end

-- Test ------------------------------------------------------------------------

-- Creating a test function
local function testMyInternalFunctionA()
  local bPass = (myInternalFunctionA() == 42)
  return bPass
end
-- Adding the test function to the unittest:
unittest.addTest("/modules/submoduleA/myInternalFunctionA", testMyInternalFunctionA)

-- Returning local function to be used in other script
local fnc  = {}
fnc.myInternalFunctionA = myInternalFunctionA
return fnc
