*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}         localhost:8080
${BROWSER}        Chrome
${Google URL}     https://www.google.co.th
${CS_KKU URL}     https://www.cs.kku.ac.th/index.php/th/

*** Test Cases ***
Go to Google
    Open Browser    ${Google URL}    ${BROWSER}  
	
Go to CS_KKU
    Input Text    q    ${CS_KKU URL}
    Submit Form    tsf
	wait until page contains    CS KKU - มหาวิทยาลัยขอนแก่น
	[Teardown]    Close Browser
