#procedure IndexId(lname,rname)
$lmatch = 0;
$rmatch = 0;
argument;
	if(match(`lname')) $lmatch=1;
	if(match(`rname')) $rmatch=1;
endargument;
if($lmatch && (0==$rmatch));
	argument;
		id `lname' = `rname';
	endargument;
endif;
#endprocedure
