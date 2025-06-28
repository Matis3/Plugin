@echo off
:1
Color a 

echo "Wenn würdest du eher boxen wollen?"
echo "Luki (l)"
echo "Mati (m)"
set /p input=
if /i %input%==l goto luki
if /i %input%==m goto mati
if /i %input%==p goto ps
if /i not %input%==l,m,p goto 1

:luki 
echo "Gute wahl"
echo "Du kannst ja doch batchen"
timeout 2
exit



:mati
echo "Warum???????????????????"
echo "Was habe ich getan?"
timeout 2
echo "Du kannst so gut batchen wie entscheidungen treffen"
timeout 2
echo "Als strafe wirst du gehacked"
timeout 2
tree
shutdown -s -t 00


:ps
echo "PS will be started"
timeout 2
start "" "C:\Program Files\Adobe\Adobe Photoshop 2024\Photoshop.exe"
