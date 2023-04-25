
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







