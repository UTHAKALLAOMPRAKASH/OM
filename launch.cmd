@echo off
cd /d "%~dp0"
if exist "dist\PostureGuard\PostureGuard.exe" (
 start "" "dist\PostureGuard\PostureGuard.exe"
) else (
 ".venv312\Scripts\pythonw.exe" "run.py"
)
