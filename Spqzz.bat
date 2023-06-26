title SpqzzTool
echo off & cls
color 3
echo  _____                         ______                      _ 
echo /  ___^|                        ^| ___ \                    ^| ^|
echo \ `--.  _ __    __ _  ____ ____^| ^|_/ /  __ _  _ __    ___ ^| ^|
echo  ^`--. \^| '_ \  / _` ^|^|_  /^|_  /^|  __/  / _` ^|^| '_ \  / _ \^| ^|
echo /\__/ /^| ^|_) ^|^| (_^| ^| / /  / / ^| ^|    ^| (_^| ^|^| ^| ^| ^|^|  __/^| ^|
echo \____/ ^| .__/  \__, ^|/___^|/___^|\_^|     \__,_^|^|_^| ^|_^| \___^|^|_^|
echo        ^| ^|        ^| ^|                                        
echo         ^|_^|        ^|_^|                                        
set /p IP=Tagets IP::
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo offline.) 
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top