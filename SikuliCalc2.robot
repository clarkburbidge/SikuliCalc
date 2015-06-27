*** Settings ***
Documentation     Remote Sikuli into Robot Framework
Library           Remote    http://localhost:8270    # Sikuli
Library           Screenshot    # Taking screenshots when a test fails

*** Variables ***
${address}        127.0.0.1
${port}           8270    # Default port number for the remote server
${data_path}      C:\\RobotFramework\\SikuliCalc\\SikuliCalcImagesStore    # Sikuli images
${similarity}     0.90    # Used in Sikuli image comparison
${timeout}        10    # Time to wait for objects

*** Testcases ***
Test
    Click Object    ${data_path}\\btnC.png    ${timeout}    ${similarity}
