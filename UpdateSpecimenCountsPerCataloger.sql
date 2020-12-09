update collectionobject co
join agent a on co.CatalogerID = a.AgentID
set co.CountAmt = 1
where a.lastname = "Clegg" and co.CountAmt is null