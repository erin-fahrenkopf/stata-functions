/* This function creates a unique identifier for each unique group of overlapping groups
based on two variables where if one group overlaps with another on either variable the two
groups are aggregated

First written by Michael Blasnik see  (http://www.stata.com/statalist/archive/2005-07/msg00860.html) 
Updated by Erin McKinney

Last Updated: 8/15/2012 by Erin McKinney

*/


program define formgrp
version 9.0
syntax varlist (min=2 max=2), gen(str)
tempvar done
tempvar dup1
tempvar dup2
gen byte `done'=0
tokenize `varlist'
gen `gen'=.
local v1 "`1'"
local v2 "`2'"

//remove observations that have no chance of being aggregated into groups
quietly bysort `v1':  gen `dup1' = cond(_N==1,0,_n)
quietly bysort `v2':  gen `dup2' = cond(_N==1,0,_n)
replace `done' = 1 if `dup1'==0 & `dup2'==0
bysort `done': replace `gen'=_n if `done'==1

su `gen', meanonly 
local group=r(max)+1
qui count if `done'==0

//combine observations into aggregate groups 
while r(N)>0 {

	bysort `done' (`v1' `v2'): replace `gen'=`group' if `v1'==`v1'[1] &`done'!=1
	bysort `done' `v2' (`gen'): replace `gen'=`gen'[1]
	bysort `done' `v1' (`gen'): replace `gen'=`gen'[1]
	bysort `done' `v2' (`gen'): replace `gen'=`gen'[1]
	bysort `done' `v1' (`gen'): replace `gen'=`gen'[1]
	bysort `done' `v2' (`gen'): replace `gen'=`gen'[1]
	bysort `done' `v1' (`gen'): replace `gen'=`gen'[1]

	qui replace `done'=1 if `done'==0 & `gen'<. 
	local group=`group'+1
	qui count if `done'==0
	}
end

