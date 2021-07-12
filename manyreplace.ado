*! Program to perform several replacements of variables at once by Pascal on 8-sep-2020.
	cap program drop manyreplace
	program define manyreplace
	version 15.1
		syntax varlist [if] [in], VARLIST2(varlist)
		cap assert c(k)>0
		if _rc!=0{
			di as error "There is no dataset loaded into stata"
		}
		
/* 		gettoken varlist1 0 : 0 ,match(par1) bind
		gettoken varlist2 0 : 0 ,match(par2) bind
		
		if ("`par1'`par2'" != "((") {
			error 198
		}
		
		unab varlist1 : `varlist1'
		unab varlist2 : `varlist2'
 */
		cap assert `:word count `varlist''==`:word count `varlist2''
 		if _rc!=0{
			di as error "The number of variables to be replaced (`:word count `varlist'') are not the same as the number of varibles (`:word count `varlist2'') to be replaced with."
			
		}
		else if _rc==0{
			local i=1
			local rep_var: word `i' of `varlist'
			foreach var of varlist `varlist2' {
				replace `rep_var' =`var' `if'
				local ++i
				local rep_var: word `i' of `varlist'
			}
		}	
	end
 	