/*
PROGRAM: ass_cleanwfirmid

This program runs cleans up the assignee names on patents and then adds the laser producer firm ids 

Input
dirty assignee names
year of when name is use 
directory

Written by Erin Fahrenkopf 12/20/2013
Updated: 12/20/2013
*/

capture program drop ass_cleanwfirmid
program define ass_cleanwfirmid


args ass year mydir

****define stuff
	local mydir "`mydir'"
	local dir "`mydir'\Box Sync\Dissertation data\STATA work\Do files\Data cleaning files\\" // directory that laser producer info is in
	local dir1 "`mydir'\OneDrive\Data work\Data Manipulation\\" // directory that laser producer info is in

****run function		
gen assignee = `ass' 		
*************clean names	
run "`dir'first assignee cleaner.do" //"C:\Users\emckinne\Documents\My Box Files\Dissertation data\STATA work\Do files\Data cleaning files\first assignee cleaner.do" //clean up assignees grabbed
				run "`dir'nonsigwords.do"
				run "`dir'abbreviations.do"
				run "`dir'unstandard.do"
				run "`dir'nonsigwords.do"
				run "`dir'abbreviations.do"	
				run "`dir'unstandard.do"
				run "`dir'abbreviations.do"
************match in firmids	
joinby 	assignee using "`dir1'Correspondence between assignees and firmids.dta" , unmatched(master) //match in firmids on assignees
				drop if midpoint != . & ((`year' <  endoffirst & entranceorder == 2) | (`year' >=  endoffirst & entranceorder == 1))
				drop  _merge entranceorder midpoint endoffirst
replace `ass' = assignee
drop assignee				
end
