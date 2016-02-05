::Geocoding batch file

::Export address data from excel to notepad
%~dp0\RunExport.vbs

::Run powershell data clean up
powershell.exe -ExecutionPolicy Bypass -Command %~dp0\Regex.ps1

::Import cleaned address back into excel
%~dp0\RunImport.vbs

::Run geocoder in excel
%~dp0\RunGeocodeMacro.vbs

::Reopen excel so geocode function works
start "" "%~dp0\GeocodeDone.xlsm"
timeout 500

