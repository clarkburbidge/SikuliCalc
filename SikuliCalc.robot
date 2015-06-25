*** Setting ***
Library    SikuliCalc.Calculator    WITH NAME  Calculator

*** Test Case ***
Verify that 2 + 2 = 4
	Start App
	Verify App
	Perform Action  2  +  2
	Verify Result  4

Verify that 2 + 2 = 5
	Start App
	Verify App
	Perform Action  2  +  2
	Verify Result  5
