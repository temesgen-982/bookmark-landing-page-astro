@echo off
cls
echo =======================================================
echo  Astro Project Structure Setup
echo =======================================================
echo.
echo This script will create the standard directories for
echo an Astro project inside your 'src' and 'public' folders.
echo.

rem --- Create directories inside the current 'src' folder ---
echo Creating 'src' subdirectories...
if not exist "components" (
    mkdir components
    echo  - Created: src\components
) else (
    echo  - Exists:  src\components
)

if not exist "layouts" (
    mkdir layouts
    echo  - Created: src\layouts
) else (
    echo  - Exists:  src\layouts
)

rem --- Create directories outside 'src' at the project root ---
echo.
echo Creating 'public' subdirectories...
if not exist "..\public" mkdir "..\public"

if not exist "..\public\assets" (
    mkdir "..\public\assets"
    echo  - Created: public\assets
) else (
    echo  - Exists:  public\assets
)

if not exist "..\public\assets\images" (
    mkdir "..\public\assets\images"
    echo  - Created: public\assets\images
) else (
    echo  - Exists:  public\assets\images
)


echo.
echo =======================================================
echo  Setup Complete!
echo =======================================================
echo.
echo Your project now has the recommended Astro structure.
echo You can press any key to close this window.
pause > nul