(Get-Content .\RegexInput.txt) |

#Delete any"DE" or "**DE", "***DE", etc.
Foreach-Object {$_ -replace "\sDE$",""}|
Foreach-Object {$_ -replace "\**DE$",""}|
Foreach-Object {$_ -replace "\s*\**DE$",""}|
Foreach-Object {$_ -replace "\s*\**DE\s*$",""}|

#Delete numbers between parentheses at end
    #ex: IFO 56 LINO CT, PLANADA (30384749)
Foreach-Object {$_ -replace "\(\d\d\d\d\d\d\d\d\)", " "}|

#Delete anything else between parenthesis
Foreach-Object {$_ -replace "\(.*\)" , ""}|

# INITIAL CHERRY PICK TO CLEAN
Foreach-Object {$_ -replace "\sA$", ""} |
Foreach-Object {$_ -replace "\sR$", ""} |
Foreach-Object {$_ -replace "\sCE$", ""} |
Foreach-Object {$_ -replace "\s*$",""}|

#Delete any"DE" or "**DE", "***DE", etc.
Foreach-Object {$_ -replace "\sDE$",""}|
Foreach-Object {$_ -replace "\**DE$",""}|
Foreach-Object {$_ -replace "\s*\**DE$",""}|
Foreach-Object {$_ -replace "\s*\**DE\s*$",""}|

#Delete numbers between parentheses at end
    #ex: IFO 56 LINO CT, PLANADA (30384749)
Foreach-Object {$_ -replace "\(\d\d\d\d\d\d\d\d\)", " "}|

#Delete anything else between parenthesis
Foreach-Object {$_ -replace "\(.*\)" , ""}|

# INITIAL CHERRY PICK TO CLEAN
Foreach-Object {$_ -replace "\sA$", ""} |
Foreach-Object {$_ -replace "\sR$", ""} |
Foreach-Object {$_ -replace "\sCE$", ""} |
Foreach-Object {$_ -replace "\s*$",""}|

#Find and replace City names at end of address 
Foreach-Object {$_ -replace "\,\sMERCED$", ""} |
Foreach-Object {$_ -replace "\sMERCED$", ""} |
Foreach-Object {$_ -replace "\,\sESCALON$", ""} |
Foreach-Object {$_ -replace "\,\sATWATER$", ""} |
Foreach-Object {$_ -replace "\,\sFIREBAUGH$", ""} |
Foreach-Object {$_ -replace "\,\sGUSTINE$", ""} |
Foreach-Object {$_ -replace "\,\sLIVINGSTON$", ""} |
Foreach-Object {$_ -replace "\,\sMANTECA$", ""} |
Foreach-Object {$_ -replace "\,\sPLANADA$", ""} |
Foreach-Object {$_ -replace "\,\sFRUITLAND$", ""} |
Foreach-Object {$_ -replace "\,\sCHOWCHILLA$", ""} |
Foreach-Object {$_ -replace "\,\sWINTON$", ""} |

#Replace 1st with first, 2nd with second, etc.
Foreach-Object {$_ -replace "\s1st\s", " First "}|
Foreach-Object {$_ -replace "\s2nd\s", " Second "}|
Foreach-Object {$_ -replace "\s3rd\s", " Third "}|
Foreach-Object {$_ -replace "\s4th\s", " Fourth "}| 
Foreach-Object {$_ -replace "\s5th\s", " Fifth "}|
Foreach-Object {$_ -replace "\s6th\s", " Sixth "}|
Foreach-Object {$_ -replace "\s7th\s", " Seventh "}|
Foreach-Object {$_ -replace "\s8th\s", " Eighth "}|
Foreach-Object {$_ -replace "\s9th\s", " Ninth "}|
Foreach-Object {$_ -replace "\s10th\s", " Tenth "}|
Foreach-Object {$_ -replace "\s11th\s", " Eleventh "}|
Foreach-Object {$_ -replace "\s12th\s", " Twelfth "}|
Foreach-Object {$_ -replace "\s13th\s", " Thirteenth "}| 
Foreach-Object {$_ -replace "\s14th\s", " Fourteenth "}|
Foreach-Object {$_ -replace "\s15th\s", " Fifteenth "}| 
Foreach-Object {$_ -replace "\s16th\s", " Sixteenth "}|
Foreach-Object {$_ -replace "\s17th\s", " Seventeenth "}| 
Foreach-Object {$_ -replace "\s18th\s", " Eighteenth "}|
Foreach-Object {$_ -replace "\s19th\s", " Ninteenth "}|
Foreach-Object {$_ -replace "\s20th\s", " Twentieth "}|

Foreach-Object {$_ -replace "^1st\s", " First "}|
Foreach-Object {$_ -replace "^2nd\s", " Second "}|
Foreach-Object {$_ -replace "^3rd\s", " Third "}|
Foreach-Object {$_ -replace "^4th\s", " Fourth "}| 
Foreach-Object {$_ -replace "^5th\s", " Fifth "}|
Foreach-Object {$_ -replace "^6th\s", " Sixth "}|
Foreach-Object {$_ -replace "^7th\s", " Seventh "}|
Foreach-Object {$_ -replace "^8th\s", " Eighth "}|
Foreach-Object {$_ -replace "^9th\s", " Ninth "}|
Foreach-Object {$_ -replace "^10th\s", " Tenth "}|
Foreach-Object {$_ -replace "^11th\s", " Eleventh "}|
Foreach-Object {$_ -replace "^12th\s", " Twelfth "}|
Foreach-Object {$_ -replace "^13th\s", " Thirteenth "}| 
Foreach-Object {$_ -replace "^14th\s", " Fourteenth "}|
Foreach-Object {$_ -replace "^15th\s", " Fifteenth "}| 
Foreach-Object {$_ -replace "^16th\s", " Sixteenth "}|
Foreach-Object {$_ -replace "^17th\s", " Seventeenth "}| 
Foreach-Object {$_ -replace "^18th\s", " Eighteenth "}|
Foreach-Object {$_ -replace "^19th\s", " Ninteenth "}|
Foreach-Object {$_ -replace "^20th\s", " Twentieth "}|

Foreach-Object {$_ -replace "\s1st$", " First "}|
Foreach-Object {$_ -replace "\s2nd$", " Second "}|
Foreach-Object {$_ -replace "\s3rd$", " Third "}|
Foreach-Object {$_ -replace "\s4th$", " Fourth "}| 
Foreach-Object {$_ -replace "\s5th$", " Fifth "}|
Foreach-Object {$_ -replace "\s6th$", " Sixth "}|
Foreach-Object {$_ -replace "\s7th$", " Seventh "}|
Foreach-Object {$_ -replace "\s8th$", " Eighth "}|
Foreach-Object {$_ -replace "\s9th$", " Ninth "}|
Foreach-Object {$_ -replace "\s10th$", " Tenth "}|
Foreach-Object {$_ -replace "\s11th$", " Eleventh "}|
Foreach-Object {$_ -replace "\s12th$", " Twelfth "}|
Foreach-Object {$_ -replace "\s13th$", " Thirteenth "}| 
Foreach-Object {$_ -replace "\s14th$", " Fourteenth "}|
Foreach-Object {$_ -replace "\s15th$", " Fifteenth "}| 
Foreach-Object {$_ -replace "\s16th$", " Sixteenth "}|
Foreach-Object {$_ -replace "\s17th$", " Seventeenth "}| 
Foreach-Object {$_ -replace "\s18th$", " Eighteenth "}|
Foreach-Object {$_ -replace "\s19th$", " Ninteenth "}|
Foreach-Object {$_ -replace "\s20th$", " Twentieth "}|

#Changes that have to happen before moving numbers from back to front
Foreach-Object {$_ -replace "\sHWY\s099\s", "  State RTE NINETYNINE "}|
Foreach-Object {$_ -replace "^HWY\s099\s", "State RTE NINETYNINE "}|
Foreach-Object {$_ -replace "\sHWY\s099$", "  State RTE NINETYNINE "}|
Foreach-Object {$_ -replace "\s", " "}|
Foreach-Object {$_ -replace "\s", " "}|

#Move to address numbers from back to front
Foreach-Object {$_ -replace "([a-z]+\s[a-z]+\s[a-z]+\s[a-z]+\s[a-z]+\s[a-z]+)\s([0-9]+$)", '$2 $1'}| 
Foreach-Object {$_ -replace "([a-z]+\s[a-z]+\s[a-z]+\s[a-z]+\s[a-z]+)\s([0-9]+$)", '$2 $1'} |
Foreach-Object {$_ -replace "([a-z]+\s[a-z]+\s[a-z]+\s[a-z]+)\s([0-9]+$)", '$2 $1'} |
Foreach-Object {$_ -replace "([a-z]+\s[a-z]+\s[a-z]+)\s([0-9]+$)", '$2 $1'} |
Foreach-Object {$_ -replace "([a-z]+\s[a-z]+)\s([0-9]+$)", '$2 $1'} | 
Foreach-Object {$_ -replace "([a-z]+)\s([0-9]+$)", '$2 $1'} | 
Foreach-Object {$_ -replace "([a-z]+)\s([0-9]+\s$)", '$2 $1'} | 

#Change State RTE numbers back to digits 
Foreach-Object {$_ -replace "NINETYNINE", "99"}|

#Find and replace State RTE's

#Replace directional info 
Foreach-Object {$_ -replace "^[NSEW]/[NSEW]\sOF"," AND "}| 
Foreach-Object {$_ -replace "\s[NSEW]/OF"," AND "}| 
Foreach-Object {$_ -replace "\s[NSEW]/\s"," AND "}| 
Foreach-Object {$_ -replace "^[NSEW]/[NSEWO]\s"," AND "}|     
Foreach-Object {$_ -replace "^[NSEW]/[NSEWO]\sCRN\s"," AND "}|
Foreach-Object {$_ -replace "\s[NSEW]/[NSEWO]\s", " AND "}|
Foreach-Object {$_ -replace "\s[NSEW]/[NSEWO]\sOF\s", " AND "}| 
Foreach-Object {$_ -replace "^[NSEW][NSEWO]\s"," AND"}|  
Foreach-Object {$_ -replace "\s[NSEW][NSEWO]\s"," AND "}|  
Foreach-Object {$_ -replace "\sN\s", " NORTH "}|
Foreach-Object {$_ -replace "\sS\s", " SOUTH "}|
Foreach-Object {$_ -replace "\sE\s", " EAST "}|
Foreach-Object {$_ -replace "\sW\s", " WEST "}|
Foreach-Object {$_ -replace "\sON\s", " AND "}|
Foreach-Object {$_ -replace "\sBT\s", " AND "}|
Foreach-Object {$_ -replace "\sBET\s", " AND "}|

#Delete any foot measurements e.g. 70', 1500', etc.
Foreach-Object {$_ -replace "\s\d+\'\s", " "}|
Foreach-Object {$_ -replace "^\d+\'\s", ""}|
Foreach-Object {$_ -replace "\s\d+\'[NSEW]/[NSEWO]", " AND "}|
Foreach-Object {$_ -replace "\s\d+\'[NSEW][NSEWO]\s", " AND "}|
Foreach-Object {$_ -replace "^\d+\'[NSEW]/[NSEWO]", " AND "}|
Foreach-Object {$_ -replace "^\d+\'[NSEW][NSEWO]\s", " AND "}|
Foreach-Object {$_ -replace "\d+FT" , " AND "}|
Foreach-Object {$_ -replace "\d+\sFT" , " AND "}|
Foreach-Object {$_ -replace "\s\d*\sAND\s", " AND "}|

#Remove abbreviations and clutter
Foreach-Object {$_ -replace "\sCRN\s" , " "}|
Foreach-Object {$_ -replace "^CRN\sOF\s" , " "}|
Foreach-Object {$_ -replace "^CRN\s" , " "}|
Foreach-Object {$_ -replace "\sX\sFROM\s", " "}|
Foreach-Object {$_ -replace "^X\sFROM\s", " "}|
Foreach-Object {$_ -replace "\sSEC\s", " "}|
ForEach-Object {$_ -replace "^ALLEY\sBTWN\s", " "}|
ForEach-Object {$_ -replace "\sALLEY\sBTWN\s", " "}|
ForEach-Object {$_ -replace "\sIN\sALLEY$", " "}|
ForEach-Object {$_ -replace "\s1\sPOLE\s", " "}|
ForEach-Object {$_ -replace "\s1POLE\s", " "}|
ForEach-Object {$_ -replace "\s[0-9]+\sPOLES\s", " "}|
ForEach-Object {$_ -replace "\s[0-9]+POLES\s", " "}|
Foreach-Object {$_ -replace "^END\sOF\s" , ""}|
Foreach-Object {$_ -replace "\sEAST\sEND\sOF\s" , " "}|
Foreach-Object {$_ -replace "^ON\s" , " "}|
Foreach-Object {$_ -replace "\sAND\sRR\sTRACKS$" , " "}|
Foreach-Object {$_ -replace "^ALLEY\sBTW\s" , " "}|
Foreach-Object {$_ -replace "\sALLEY\sBTW\s" , " "}|
Foreach-Object {$_ -replace "^END\sOF\s" , " "}|
Foreach-Object {$_ -replace "^EAST\sEND\sOF\s" , " "}|
Foreach-Object {$_ -replace "\sSTA\s\d*\+\d*\sLT" , " "}|
Foreach-Object {$_ -replace "^BEHIND\s" , " "}|
Foreach-Object {$_ -replace "^PK\sLOT\s" , " "}|
Foreach-Object {$_ -replace "\sOVERPASS$" , " "}|
Foreach-Object {$_ -replace "\sALY\sBETW\s" , " "}|
Foreach-Object {$_ -replace "^ALY\sBETW\s" , " "}|
Foreach-Object {$_ -replace "\sLT#\d*\s" , " "}|

#Delete semi-colons
Foreach-Object {$_ -replace "\;", ""}|
Foreach-Object {$_ -replace "\s\;\s", " "}|

#Replace @ or & with AND
Foreach-Object {$_ -replace "\s\@\s"," AND "}|
Foreach-Object {$_ -replace "\s\&\s"," AND "}|

#Delete comma at the end 
Foreach-Object {$_ -replace "\s\,$",""}|
Foreach-Object {$_ -replace "\,$",""}|

# REPLACE SUFFIXES WITH FULL NAMES
Foreach-Object {$_ -replace "\sPK\s", " PARK "} | 
Foreach-Object {$_ -replace "\sPK$", " PARK"} | 
Foreach-Object {$_ -replace "\sAVE\s", " AVENUE "} |
Foreach-Object {$_ -replace "\sAVE$", " AVENUE"} |
Foreach-Object {$_ -replace "\sAV\s", " AVENUE "} |
Foreach-Object {$_ -replace "\sAV$", " AVENUE "} |
Foreach-Object {$_ -replace "\sAVEC\s", " AVENUE "} |
Foreach-Object {$_ -replace "\sAVEC$", " AVENUE "} |
Foreach-Object {$_ -replace "\sST\s", " STREET "} |
Foreach-Object {$_ -replace "\sST$", " STREET"} |
Foreach-Object {$_ -replace "\sST1\s", " STREET "} |
Foreach-Object {$_ -replace "\sST1$", " STREET"} |
Foreach-Object {$_ -replace "\sSTR\s", " STREET "} |
Foreach-Object {$_ -replace "\sSTR$", " STREET"} |
Foreach-Object {$_ -replace "\sRD\s", " ROAD "} |
Foreach-Object {$_ -replace "\sRD$", " ROAD"} |
Foreach-Object {$_ -replace "\sBLVD\s", " BOULEVARD "} |
Foreach-Object {$_ -replace "\sBLVD$", " BOULEVARD"} |
Foreach-Object {$_ -replace "\sBLV$", " BOULEVARD"} |
Foreach-Object {$_ -replace "\sLA\s", " LANE "} |
Foreach-Object {$_ -replace "\sLA$", " LANE"} |
Foreach-Object {$_ -replace "\sLN\s", " LANE "} |
Foreach-Object {$_ -replace "\sLN$", " LANE"} |
Foreach-Object {$_ -replace "\sTERR\s", " TERRACE "} |
Foreach-Object {$_ -replace "\sTERR$", " TERRACE"} |
Foreach-Object {$_ -replace "\sSQ\s", " SQUARE "} |
Foreach-Object {$_ -replace "\sSQ$", " SQUARE"} |
Foreach-Object {$_ -replace "\sPL\s", " PLACE "} |
Foreach-Object {$_ -replace "\sPL$", " PLACE"} |
Foreach-Object {$_ -replace "\sPL2\s", " PLACE "} |
Foreach-Object {$_ -replace "\sPL2$", " PLACE"} |
Foreach-Object {$_ -replace "\sRV\s", " RIVER "} |
Foreach-Object {$_ -replace "\sRV$", " RIVER"} |
Foreach-Object {$_ -replace "\sRIV\s", " RIVER "} |
Foreach-Object {$_ -replace "\sRIV$", " RIVER"} |
Foreach-Object {$_ -replace "\sVAL\s", " VALLEY "} |
Foreach-Object {$_ -replace "\sVAL$", " VALLEY"} |
Foreach-Object {$_ -replace "\sPKWY\s", " PARKWAY "} |
Foreach-Object {$_ -replace "\sPKWY$", " PARKWAY"} |
Foreach-Object {$_ -replace "\sPKY\s", " PARKWAY "} |
Foreach-Object {$_ -replace "\sPKY$", " PARKWAY"} |
Foreach-Object {$_ -replace "\sINT\s", ""} |
Foreach-Object {$_ -replace "\sCIRC\s", " CIRCLE "} |
Foreach-Object {$_ -replace "\sCIRC$", " CIRCLE"} |
Foreach-Object {$_ -replace "\sCI\s", " CIRCLE "} |
Foreach-Object {$_ -replace "\sCI$", " CIRCLE"} |
Foreach-Object {$_ -replace "\sCIRL\s", " CIRCLE "} |
Foreach-Object {$_ -replace "\sCIRL$", " CIRCLE"} |
Foreach-Object {$_ -replace "\sCIR\s", " CIRCLE "} |
Foreach-Object {$_ -replace "\sCIR$", " CIRCLE"} |
Foreach-Object {$_ -replace "\sTR\s", " TRAIL "} |
Foreach-Object {$_ -replace "\sTR$", " TRAIL"} |
Foreach-Object {$_ -replace "\sDR\s", " DRIVE "} |
Foreach-Object {$_ -replace "\sDR$", " DRIVE"} |
Foreach-Object {$_ -replace "\sCT\s", " COURT "} |
Foreach-Object {$_ -replace "\sCT$", " COURT"} |
Foreach-Object {$_ -replace "\sDEAD\sEND$", ""} |
Foreach-Object {$_ -replace "\sDEAD\sEND\s", " "} |
Foreach-Object {$_ -replace "\sAND\sDEAD\sEND$", ""} |
Foreach-Object {$_ -replace "\sDEAD\sEND\sOF$", ""} |
Foreach-Object {$_ -replace "\sDEAD\sEN$", ""} |
Foreach-Object {$_ -replace "\sAT\s", " "} |
Foreach-Object {$_ -replace "\sINFO\s", " "} |
Foreach-Object {$_ -replace "\sOFF\s", " "} |
Foreach-Object {$_ -replace "\sOFPL\s", " "} |
Foreach-Object {$_ -replace "\sOPP\s", " "} |
Foreach-Object {$_ -replace "\sCR\s", " "} |
Foreach-Object {$_ -replace "\sDEWO\s", " "} | 
Foreach-Object {$_ -replace "\sIN\sFO\s", " "} | 
Foreach-Object {$_ -replace "\sEXIT\s", ""} |
Foreach-Object {$_ -replace "\sEXIT$", ""} |
Foreach-Object {$_ -replace "\sOM ISLAND$", ""} |
Foreach-Object {$_ -replace "\sON ISLAND$", ""} |
Foreach-Object {$_ -replace "\sPARKING\sLOT\s[1234567890]", ""} |
Foreach-Object {$_ -replace "\sLBR\sPKL\s", ""} |
Foreach-Object {$_ -replace "\sHWY\s", " HIGHWAY "} |
Foreach-Object {$_ -replace "\sHWY$", " HIGHWAY "} |
Foreach-Object {$_ -replace "\sCRT\s", " COURT "} |
Foreach-Object {$_ -replace "\sCRT$", " COURT "} |
Foreach-Object {$_ -replace "\sWY\s", " WAY "} |
Foreach-Object {$_ -replace "\sWY$", " WAY "} |
Foreach-Object {$_ -replace "\sST\s", " STREET "} |
Foreach-Object {$_ -replace "\sST$", " STREET "} |
Foreach-Object {$_ -replace "\sYOSEMAVE\s", " YOSEMITE AVENUE "} |
Foreach-Object {$_ -replace "^R\sST\.\sUNDERPASS\s", " 1260 R STREET "} |
Foreach-Object {$_ -replace "\sBVD\sROAD\s", " B V D AVE "} |
Foreach-Object {$_ -replace "\sCUL\sDE\sSAC\s"," "}|
Foreach-Object {$_ -replace "\sCUL\sDE\sSAC$"," "}|

#FINAL CLEANUP
Foreach-Object {$_ -replace "\s$", ""} |
Foreach-Object {$_ -replace "^\s", ""} |
Foreach-Object {$_ -replace "\s\s", " "} |
Foreach-Object {$_ -replace "\s\s", " "} |
Foreach-Object {$_ -replace "\s$", ""} |
Foreach-Object {$_ -replace "^\s", ""} |
Foreach-Object {$_ -replace "^AND\s", ""} |
Foreach-Object {$_ -replace "\sAND$", ""} |
Foreach-Object {$_ -replace "^AND$", ""} |
Foreach-Object {$_ -replace "\sAND\sAND\s", " AND "} |

Set-Content .\RegexOutput.txt
