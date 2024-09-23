@echo off
title GOOGLE.EXE
setlocal enabledelayedexpansion

set cookies=cookies.txt
set history=history.txt

:inicio
echo Welcome to google-surf-in-the-internet
echo Type "HELP" to see available commands.
set /p search=Enter your search: 

if "%search%" == "HELP" (
    echo Available commands:
    echo SEARCH <term> - Perform a search.
    echo SAVE <filename> - Save results.
    echo HISTORY - Show search history.
    echo COOKIES - Show cookies.
    echo EXIT - Exit the application.
    goto inicio
)

if "%search%" == "EXIT" (
    echo Exiting...
    exit
)

if "%search%" == "HISTORY" (
    type !history!
    goto inicio
)

if "%search%" == "COOKIES" (
    type !cookies!
    goto inicio
)

set results=Results.txt
echo Searching for "%search%"... > !results!
rem Simulate search results here
echo 1. www.example1.com - Description 1 >> !results!
echo 2. www.example2.com - Description 2 >> !results!
echo 3. www.example3.com - Description 3 >> !results!

echo Results saved in !results!
echo. 
echo Results:
type !results!

set /p save=Would you like to save the results? (Y/N): 
if /i "!save!" == "Y" (
    set /p filename=Enter filename: 
    copy !results! "!filename!.txt"
    echo Results saved in "!filename!.txt".
)

rem Add entry to history
echo %search% >> !history!
echo.
goto inicio
if "%search%" == "backanother>>>"
goto otherone>>>>>>>
:otherone>>>>>>>
@echo off
title Google Simulator in MS-DOS
setlocal enabledelayedexpansion

set apiKey=AIzaSyDyAGCjxooO4TFSMI4Z1zgoVbusCr1fvpw
set cx=sonic-terminal-436501-f2
set cookies=cookies.txt
set history=history.txt

:inicio
echo Welcome to Google in MS-DOS
set /p search=Enter your search: 

if "%search%" == "EXIT" (
    echo Exiting...
    exit
)
if "%search%" == "olaski>cmd"
goto olaski>

echo Searching for "%search%"... > results.txt

curl -G "https://www.googleapis.com/customsearch/v1" --data-urlencode "key=!apiKey!" --data-urlencode "cx=!cx!" --data-urlencode "q=!search!" > results.json

rem Process results.json to extract and display results here
rem For example:
echo 1. www.example1.com - Description 1 >> results.txt

echo Results saved in results.txt!
echo.

rem Save search to history
echo %search% >> !history!
goto inicio

:olaski>
@echo off
title Google Simulator in MS-DOS
setlocal enabledelayedexpansion

set apiKey=AIzaSyDyAGCjxooO4TFSMI4Z1zgoVbusCr1fvpw
set cx=sonic-terminal-436501-f2
set history=history.txt

:inicio
echo Welcome to surfer internet
set /p search=Enter your search: 

if "%search%" == "EXIT" (
    echo Exiting...
    exit
)

rem Save search to history
echo %search% >> !history!

rem Construct the search URL
set searchUrl=https://www.google.com/search?q=!search!

rem Open the search results in the default web browser
start "" "!searchUrl!"

echo You are being redirected to the search results...
goto inicio
