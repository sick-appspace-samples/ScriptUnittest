local unittest = require "unittest"

-- Function --------------------------------------------------------------------

local function myInternalFunctionB()
  -- This function calculates something
  return 40
end

-- Test ------------------------------------------------------------------------

-- Creating a test function
local function testMyInternalFunctionB()
  local bPass = (myInternalFunctionB() == 40)
  return bPass
end
-- Adding the test function to the unittest.
unittest.addTest("/modules/submoduleB/myInternalFunctionB", testMyInternalFunctionB)

-- Returning local function to be used in other script
local fnc  = {}
fnc.myInternalFunctionB = myInternalFunctionB
return fnc
