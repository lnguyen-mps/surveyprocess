@rem = '--*-Perl-*--
@echo off
if "%OS%" == "Windows_NT" goto WinNT
<<<<<<< HEAD
perl %HOMEPATH%\surveyprocess\checkin.pl %1 %2
goto endofperl
:WinNT
perl %HOMEPATH%\surveyprocess\checkin.pl %*
=======
perl C:/%HOMEPATH%/surveyprocess/checkin.pl %1 %2
goto endofperl
:WinNT
perl C:/%HOMEPATH%/surveyprocess/checkin.pl %*
>>>>>>> 782aca737699f46b6c4521ccf40163a512984e7c
if NOT "%COMSPEC%" == "%SystemRoot%\system32\cmd.exe" goto endofperl
if %errorlevel% == 9009 echo You do not have Perl in your PATH.
if errorlevel 1 goto script_failed_so_exit_with_non_zero_val 2>nul
:endofperl
