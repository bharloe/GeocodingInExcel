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
  Set xlBook = xlApp.Workbooks.Open(fullpath & "\RegexImported.xlsm") 

  xlApp.Visible = false
  xlApp.Run "GeocodeMacro"
  xlApp.Run "GeocodeTypeMacro"
  xlApp.ActiveWorkbook.SaveAs fullpath & "\GeocodeDone.xlsm"
  
  xlApp.Quit 

  Set xlBook = Nothing 
  Set xlApp = Nothing 



End Sub 



