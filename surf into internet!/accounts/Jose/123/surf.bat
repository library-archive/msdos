@echo off
title Surf Into The Internet! (since 1970) (version release: 1.0)
setlocal enabledelayedexpansion

set history=history.txt

:inicio
echo Welcome " Jose ortiz" to surf into the internet!
set /p search=Enter your search: 

if "%search%" == "EXIT" (
    echo Exiting...
    exit
)

rem Save search to history
echo %search% >> !history!

rem Construct the search URL
set searchUrl=https://www.google.com/search?q=!search!

rem Open the search results in the browser (change this to a compatible command if needed)
echo You are being redirected to the search results at !searchUrl!...
goto inicio
