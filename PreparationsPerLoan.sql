select l.LoanID, l.LoanNumber, lp.LoanPreparationID as lpID, t.FullName as taxon, p.CountAmt as prepcount, lp.Quantity as loaned, lp.QuantityReturned, lp.QuantityResolved  from loan l --  
join loanpreparation lp on l.LoanID = lp.LoanID
join preparation p on p.PreparationID = lp.PreparationID
join collectionobject co on co.CollectionObjectID = p.CollectionObjectID
join collection c on c.collectionId = co.CollectionID
join determination d on d.CollectionObjectID = co.CollectionObjectID
join taxon t on d.TaxonID = t.TaxonID
where l.LoanNumber = 'l-6' and c.CollectionName = 'PEM Reptiles' and d.IsCurrent = true