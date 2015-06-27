*** Setting ***
Library    Remote    http://localhost:${port}

*** Variables ***
${address}    127.0.0.1
${port}    8270

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
