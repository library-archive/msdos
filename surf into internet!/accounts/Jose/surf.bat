@echo off
title surf into internet! (since 1970)
setlocal enabledelayedexpansion

set apiKey=AIzaSyDyAGCjxooO4TFSMI4Z1zgoVbusCr1fvpw
set cx=sonic-terminal-436501-f2
set cookies=cookies.txt
set history=history.txt

:inicio
echo Hi "Jose Ortiz" welcome to surf into internet! you are the best surfer.
set /p search=Enter your search: 

if "%search%" == "EXIT" (
    echo Exiting...
    exit
)

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

