@ECHO OFF

:choice
set /P c=Have you saved the GeocodeDone Excel file [Y/N]?
if /I "%c%" EQU "Y" goto :yes
if /I "%c%" EQU "N" goto :no
goto :choice

:yes
C:\Users\Ben\Desktop\GeocodingBatchFile\Files\AnalysisMacro.vbs
::Return time required and percentage geocoded

:no
exit