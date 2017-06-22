/*
PROGRAM: keep_master

This program runs right after a merge and keep all the observation in the
master data and then drop the stata generated _merge variable

Written by Erin Fahrenkopf 12/6/2013
Updated: 12/6/2013
*/

capture program drop drop_using
program define drop_using
drop if _merge == 2
drop _merge

end
