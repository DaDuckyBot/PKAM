@echo off
color 07
:loop
set /p input=Name and extension of the process you want to terminate: 
taskkill /f /im %input% >nul 2>&1
if /i "%input%"=="color" (
    color 0D
echo You Made Color! > "%~dp0AchievementA.txt"

)
if /i "%input%"=="parot.exe" (
    curl parrot.live
echo Papagaj. > "%~dp0AchievementB.txt"
)
if /i "%input%"=="" (
powershell -Command "Write-Host 'You need to type something by the way' -ForegroundColor Black -BackgroundColor White"
echo Debil > "%~dp0AchievementC.txt"
)
if /i "%input%"=="exit" (
exit
echo Wyszedłeś! > "%~dp0AchievementC.txt"
)
goto loop
pause