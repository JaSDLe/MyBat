@echo off

set serviceName=MySQL8.0.23
echo ��������%serviceName%
echo.
NET start %serviceName%
echo.

pause