/*
PROGRAM: add_varprefix

This program runs adds a prefix to a group of variables.

Inputs
prefix
list of variables to add prefix to 

Written by Erin Fahrenkopf 12/20/2013
Updated: 12/20/2013
*/

capture program drop add_varprefix
program define add_varprefix
args prefix varlist

	foreach var of varlist `varlist' {
			rename `var' `prefix'_`var'
	}
end
