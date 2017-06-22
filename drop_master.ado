/*
PROGRAM: keep_using

This program runs right after a merge and keep all the observation in the
using data and then drop the stata generated _merge variable

Written by Erin Fahrenkopf 12/6/2013
Updated: 12/6/2013
*/

capture program drop drop_master
program define drop_master
drop if _merge == 1
drop _merge

end
