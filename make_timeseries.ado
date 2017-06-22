/*
PROGRAM: make_timeseries

This program makes each obs of the data expand to have one obs for each year for the number of years
specified.

Inputs:
	number to expand by
	variables to have year change within
	base year to start counting year by

Written by Erin Fahrenkopf 12/20/2013
Updated: 12/20/2013
*/

capture program drop make_timeseries
program define make_timeseries
args how_many by firstyr

	expand `how_many'
	bysort `by': gen year = _n - 1 + `firstyr'

end
