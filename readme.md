## ScriptUnittest
Basic introduction to unit testing.

### Description
This sample shows an approach to unittest script functions. 
It has two exemplary modules and a 'main' script. The actual unittest functionality 
is found in the script Unittest. The two exemplary modules containing a function and 
their according test function. The test function is then added to the unittest. 
The whole unittest runs after calling the rununittest function. 
The test stops at the position where it failed and returns the failing path in that case.

### How to Run
The sample can be run on the emulator. The tests are triggered from another App. 
Therefore both this App ('ScriptUnittest') and the app 'ScriptUnittestRunner' have to be running on simultaneously.
The 'ScriptUnittestRunner' comes with a user interface where the unittest(s) 
can be started with a button click. The results are printed to the console.

### Implementation
To add unittests from other apps, their according CROWN can be added to the tests table.
All unittests are then run, but each test is stopped when the test fails.
In order to work, the served function must follow the Syntax 'CROWN_NAME.runUnittest'

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

### Topics
Programming-Pattern, Sample, Testing, SICK-AppSpace