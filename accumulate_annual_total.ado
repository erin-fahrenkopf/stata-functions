/*
PROGRAM: accumulate_annual_total

This program finds the accumulate total of a given variable over time with the max of the cumulate
total within a year

Input
	variable to sum by year
	year
	new variable to create
	variables over which to sum

Written by Erin Fahrenkopf 12/20/2013
Updated: 12/20/2013
*/

capture program drop accumulate_annual_total
program define accumulate_annual_total
args sum_me year newvar overvar

bysort `overvar' (`year'): gen `newvar'1 = sum(`sum_me') 
		bysort `overvar' `year': egen `newvar' = max(`newvar'1)
			drop `newvar'1
end
