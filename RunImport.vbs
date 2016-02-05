Option Explicit

On Error Resume Next

ExcelMacroExample

Sub ExcelMacroExample() 

  Dim xlApp 
  Dim xlBook
  Dim fso
  Set fso = CreateObject("Scripting.FileSystemObject") 
  Dim fullpath
  fullpath = fso.GetAbsolutePathName(".")
  set fso = Nothing 

  Set xlApp = CreateObject("Excel.Application") 
  Set xlBook = xlApp.Workbooks.Open(fullpath & "\GeocodingStart.xlsm") 
  
  xlApp.Run "DoTheImport"
  xlApp.ActiveWorkbook.SaveAs fullpath & "\RegexImported.xlsm"
  xlApp.Quit

  Set xlApp = Nothing
  Set xlBook = Nothing

End Sub 



