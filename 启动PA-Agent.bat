@echo off
REM ============================================================
REM  PA Agent one-click launcher
REM  Double-click this file to start PA Agent GUI inside the
REM  "pa-agent" conda environment (no manual activation needed).
REM ============================================================
setlocal

set "CONDA_ROOT=D:\anaconda3"
set "ENV_NAME=pa-agent"
set "PROJECT_DIR=%~dp0"

REM Activate the conda env via conda.bat (works without pre-init of cmd)
call "%CONDA_ROOT%\condabin\conda.bat" activate "%ENV_NAME%"
if errorlevel 1 (
    echo [ERROR] Failed to activate conda env "%ENV_NAME%".
    echo         Check CONDA_ROOT / ENV_NAME at the top of this script.
    pause
    exit /b 1
)

REM Launch the GUI. run.py blocks until the window is closed.
python "%PROJECT_DIR%run.py"

endlocal
