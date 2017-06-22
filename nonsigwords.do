/* This file cleans up words that add no extra information to a list of organization names.  
In other words it deletes non significant words from the names and checks for off spellings of these words too.

Last Updated: 10/21/2012 by Erin McKinney

*/
	replace assignee = regexr(assignee, "COMPANY ", "")
		replace assignee = regexr(assignee, " COMPANY$", "")
		replace assignee = regexr(assignee, "COMPANY$", "")	
		replace assignee = regexr(assignee, " COMAPNY$", "")
		replace assignee = regexr(assignee, " COMPA$", "")
		replace assignee = regexr(assignee, " COMPAN$", "")
		replace assignee = regexr(assignee, " COMP$", "")
		replace assignee = regexr(assignee, " COM$", "")
		replace assignee = regexr(assignee, "COMAPNY ", "")
		replace assignee = regexr(assignee, "COMPANYZ ", "")
		replace assignee = regexr(assignee, "COMAPNAY ", "")
		replace assignee = regexr(assignee, " COMPANYZ$", "")
		replace assignee = regexr(assignee, " COMAPNAY$", "")	
	replace assignee = regexr(assignee, "CORPORATION ", "")
		replace assignee = regexr(assignee, " CORPORATION$", "")
		replace assignee = regexr(assignee, " CORPORTION$", "")
		replace assignee = regexr(assignee, " CORPORATIONORATON$", "")
		replace assignee = regexr(assignee, "CORPORATIONORATON ", "")
		replace assignee = regexr(assignee, " COROPRATION$", "")
		replace assignee = regexr(assignee, "COROPRATION ", "")
		replace assignee = regexr(assignee, "CORORATION ", "")
		replace assignee = regexr(assignee, "INCORPORATION ", "")
		replace assignee = regexr(assignee, "CORPORAITON ", "")
		replace assignee = regexr(assignee, "COPRPORATION ", "")
		replace assignee = regexr(assignee, "CORPORATIONS ", "")
		replace assignee = regexr(assignee, "XCORPORATION ", "")
			replace assignee = regexr(assignee, " COROPRATION$", "")
		replace assignee = regexr(assignee, " CORORATION$", "")
		replace assignee = regexr(assignee, " INCORPORATION$", "")
		replace assignee = regexr(assignee, " CORPORAITON$", "")
		replace assignee = regexr(assignee, " COPRPORATION$", "")
		replace assignee = regexr(assignee, " CORPORATIONS$", "")
		replace assignee = regexr(assignee, " XCORPORATION$", "")
		replace assignee = regexr(assignee, " CORPORATOIN$", "")
	replace assignee = regexr(assignee, "INCORPORATED ", "")
		replace assignee = regexr(assignee, " INCORPORATED$", "")
		replace assignee = regexr(assignee, " INCOPORATED$", "")
	replace assignee = regexr(assignee, "CORP ", "")
		replace assignee= regexr(assignee," CORP$","")
		replace assignee= regexr(assignee," COPR$","")
	replace assignee = regexr(assignee, " CO ", " ")
		replace assignee= regexr(assignee," CO$","")
		replace assignee= regexr(assignee," COR$","")
	replace assignee = regexr(assignee, "INCORP ", "")
		replace assignee= regexr(assignee," [I][N][C][O][R][P]$","")
	replace assignee = regexr(assignee, " INC ", " ")
		replace assignee= regexr(assignee," INC$","")
		replace assignee= regexr(assignee,"INC$","")
		replace assignee= regexr(assignee," IN$","")
		replace assignee= regexr(assignee,"INCC$","")
	replace assignee = regexr(assignee, " LTD", "")
		replace assignee = regexr(assignee, " LT$", "")
		replace assignee = regexr(assignee, "LTD$", "")
		replace assignee = regexr(assignee, " LIMITED", "")
		replace assignee = regexr(assignee, "LIMITED$", "")
		replace assignee = regexr(assignee, "LIMTED$", "")
	replace assignee= regexr(assignee,"^[T][H][E] ","")
		replace assignee= regexr(assignee," [T][H][E]$","")
	replace assignee= regexr(assignee," [/(][A-Z]+[/)] "," ")
		replace assignee= regexr(assignee," [/(][A-Z]+[ ]*[A-Z]*[ ][A-Z]*[/)] "," ")
		replace assignee= regexr(assignee," [/(][A-Z]+[ ]*[A-Z]*[ ][A-Z]*[/)]$"," ")
		replace assignee= regexr(assignee," [/(][A-Z]+[/)]$","")
		replace assignee = regexr(assignee, " DIVISION$", "")
		replace assignee = regexr(assignee, " DIVISIONN$", "")
		replace assignee = regexr(assignee, " DIV$", "")
		replace assignee = regexr(assignee, " HOLDINGS$", "")
		replace assignee = regexr(assignee, " HOLDING$", "")
		replace assignee = regexr(assignee, " HODING$", "")
		replace assignee = regexr(assignee, " HLD$", "")
	replace assignee = regexr(assignee, " AG ", "")
		replace assignee = regexr(assignee, " AG$", "")
		replace assignee = regexr(assignee, " A$", "")
	replace assignee = regexr(assignee, " AB$", "")
		replace assignee = regexr(assignee, " SA$", "")
	replace assignee = regexr(assignee, "GMBH ", "")
		replace assignee = regexr(assignee, " GBMH$", "")
		replace assignee = regexr(assignee, " GMB$", "")
		replace assignee = regexr(assignee, " GMBH$", "")
	replace assignee = regexr(assignee, "G M B H ", "")
		replace assignee = regexr(assignee, " G M B H$", "")
	replace assignee = regexr(assignee, "KK ", "")
		replace assignee = regexr(assignee, " KK$", "")
		replace assignee = regexr(assignee, " SPA$", "")
		replace assignee = regexr(assignee, " PLC$", "")
		replace assignee = regexr(assignee, " PTY$", "")
		replace assignee = regexr(assignee, " PTE$", "")
		replace assignee = regexr(assignee, " SRL$", "")
		replace assignee = regexr(assignee, " KG$", "")
		replace assignee = regexr(assignee, " LLC$", "")
		replace assignee = regexr(assignee, " LLP$", "")
		replace assignee = regexr(assignee, " LP$", "")
		replace assignee = regexr(assignee, " NV$", "")
		replace assignee = regexr(assignee, " BV$", "")
		replace assignee = regexr(assignee, " LP$", "")
		replace assignee = regexr(assignee, " LNC$", "")
		replace assignee = regexr(assignee, " OY$", "")
		replace assignee = regexr(assignee, " SAS$", "")
		replace assignee = regexr(assignee, " AS$", "")
		replace assignee = regexr(assignee, " MBH$", "")
		replace assignee = regexr(assignee, " BAREMA$", "")
		replace assignee = regexr(assignee, " ECBU IP$", "")
		replace assignee = regexr(assignee, " [0-9][0-9][0-9][0-9]$", "")
		
	replace assignee = regexr(assignee, "REGENTS OF THE ", "")
		replace assignee = regexr(assignee, "REGENTS OF THE$", "")
		replace assignee = regexr(assignee, "REGENTS OF ", "")
		replace assignee = regexr(assignee, "REGENTS OF$", "")
		replace assignee = regexr(assignee, "BOARD OF REGENTS ", "")
		replace assignee = regexr(assignee, "BOARD OF REGENTS$", "")
	replace assignee = regexr(assignee, "BOARD OF TRUSTEES OF ", "")
		replace assignee = regexr(assignee, "BOARD OF TRUSTEES ", "")
		replace assignee = regexr(assignee, "TRUSTEES OF THE ", "")
		replace assignee = regexr(assignee, "TRUSTEES OF ", "")
	replace assignee = regexr(assignee, "OFFICE OF TECHNOLOGY$", "")
		replace assignee = regexr(assignee, "OFFICE OF TECHNOLOGY TRANSFER$", "")
		replace assignee = regexr(assignee, "SECRETARY OF THE ", "")
	replace assignee = regexr(assignee, "SECRETARY OF ", "")
	replace assignee = regexr(assignee, "AKTIENGESELLSCHAFT", "")
	replace assignee = regexr(assignee, "AKTIEGESELLSCHAFT", "")		
	replace assignee = regexr(assignee, "AKTIENGESELLSCHAFT", "")	
	replace assignee = regexr(assignee, "AKTIENGSELLSCHAFT", "")
	replace assignee = regexr(assignee, "KABUSHIKI KAISHA", "")
	replace assignee = regexr(assignee, " PATENTS$", "")
	replace assignee = regexr(assignee, " PATENT$", "")
	replace assignee = regexr(assignee, " PROPERTY$", "")
	replace assignee = regexr(assignee, " GROUP$", "")
	replace assignee = regexr(assignee, " USA$", "")
	replace assignee = regexr(assignee, " US$", "")
	replace assignee = regexr(assignee, " UK$", "")
	replace assignee = regexr(assignee, " CANADA$", "")
	replace assignee = regexr(assignee, " TAIWAN$", "")
	replace assignee = regexr(assignee, " FRANCE$", "")
	replace assignee = regexr(assignee, " AUSTRALIA$", "")
	replace assignee = regexr(assignee, " EUROPA$", "")
	replace assignee = regexr(assignee, " SINGAPORE$", "")	
	replace assignee = regexr(assignee, " NORTH AMERICA$", "")
	replace assignee = regexr(assignee, " NORTH AMERICAN$", "")
	replace assignee = regexr(assignee, " UNITED STATES$", "")
	replace assignee = regexs(1) if regexm(assignee, "([A-Z ]*UNIVERSITY[A-Z ]*)RESEARCH FOUNDATION$")
	replace assignee = regexs(1) if regexm(assignee, "([A-Z ]*UNIVERSITY[A-Z ]*)FOUNDATION$")
	replace assignee = regexr(assignee, " AND$", "")
*******************add in from excel file, ends with tab
replace assignee = regexr(assignee, " LC$", "")
replace assignee = regexr(assignee, " IBERICA$", "")
replace assignee = regexr(assignee, " EV$", "")
replace assignee = regexr(assignee, " SARL$", "")
replace assignee = regexr(assignee, " NZ$", "")
replace assignee = regexr(assignee, " LLLP$", "")
replace assignee = regexr(assignee, " GESELLSCHAFT$", "")
replace assignee = regexr(assignee, " ISRAEL$", "")
replace assignee = regexr(assignee, " II$", "")
replace assignee = regexr(assignee, " ILC$", "")
replace assignee = regexr(assignee, " RT$", "")
replace assignee = regexr(assignee, " SWEDEN$", "")
replace assignee = regexr(assignee, " ACTIENGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKDTIENGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKIENGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTEINGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENEGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGELLSELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESEKKSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLESCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLSCAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLSCAHFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLSHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLSHCAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESLLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESSELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESSELSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENSEGELLSCHAFT$", "")
replace assignee = regexr(assignee, " ATIENGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AGFA$", "")
replace assignee = regexr(assignee, " AKGIENGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKIENGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKITENGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKITNEGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENEGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELECHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELISCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLSACHFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLSCAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLSCAHFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLSCGAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLSCHAT$", "")
replace assignee = regexr(assignee, " AKTIENGESELLSHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESENLLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESLLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESSELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENGESSELSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIENSEGELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTIWNGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " AKTLENGESELLSCHAFT$", "")
replace assignee = regexr(assignee, " JAPAN$", "")
replace assignee = regexr(assignee, " INCX$", "")
replace assignee = regexr(assignee, " IP$", "")


****************************end
	replace assignee = regexr(assignee, "^[0-9][0-9][0-9][0-9][0-9][0-9] ", "")
	replace assignee = regexr(assignee, "^[0-9][0-9][0-9][0-9][0-9][0-9][0-9] ", "")
	replace assignee = regexr(assignee, "^[0-9][0-9][0-9][0-9] [0-9][0-9][0-9][0-9] ", "")
	replace assignee = regexr(assignee, "^501 ", "")
	replace assignee = "" if regexm(assignee, "^[0-9]*$")
	replace assignee = "" if regexm(assignee, " [0-9][0-9]$")
	replace assignee = itrim(trim(assignee))
	
	