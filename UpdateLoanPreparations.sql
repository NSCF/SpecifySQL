update loanpreparation lp
join loan l on lp.LoanID = l.LoanID
set lp.QuantityResolved = 2, lp.QuantityReturned = 2
where l.LoanID in (16,17)