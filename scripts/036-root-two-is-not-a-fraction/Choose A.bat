@echo off
rem Chooses script A. To READ the scripts first, open "Compare scripts.html".
cd /d "%~dp0"
echo This will make SCRIPT A the one you record for this Short.
choice /c YN /m "Choose script A"
if errorlevel 2 (echo Nothing changed. & pause & exit /b)
if exist "02 SCRIPT\script_final.md" (
  fc /b "02 SCRIPT\script_final.md" "02 SCRIPT\script_A.md" >nul && goto ok
  fc /b "02 SCRIPT\script_final.md" "02 SCRIPT\script_B.md" >nul && goto ok
  echo Your script_final.md has your own edits in it, so it was NOT replaced.
  echo Ask Claude to switch versions and keep your edits.
  pause
  exit /b
)
:ok
copy /y "02 SCRIPT\script_A.md" "02 SCRIPT\script_final.md" >nul
copy /y "04 SCENES\scene_plan_A.json" "04 SCENES\scene_plan.json" >nul
echo Done: script A chosen.
echo Next: in 02 SCRIPT\script_final.md put [MINE] at the start of the suggested line (rewrite it if you like),
echo tick "Approved by Justin: [x]" in 02 SCRIPT\factcheck.md, then record.
pause
