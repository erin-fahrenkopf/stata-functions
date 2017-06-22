/*
PROGRAM: keep_matched

This program runs right after a merge and keep all the observation in the
using data and the master data that match and then drop the stata generated _merge variable

Written by Erin Fahrenkopf 12/6/2013
Updated: 12/6/2013
*/

capture program drop keep_matched
program define keep_matched
keep if _merge == 3
drop _merge

end
