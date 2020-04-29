@echo off

cls
set matchStr=-

for /d %%i in (*) do ( echo %%i | findstr /C:%matchStr% >nul && (
echo.
echo.
echo ====================================
echo ------------远程分支更新------------
echo            %%i
cd %%i 
echo ----------------开始----------------
echo.
git remote update origin -p
cd .. 
echo.
echo ----------------完成----------------
echo ====================================
echo.
echo.
)
)
 
pause