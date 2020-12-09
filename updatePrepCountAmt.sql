update preparation p
join collectionobject co on co.CollectionObjectID = p.CollectionObjectID
join collection c on c.collectionId = co.CollectionID
set p.CountAmt =  ceil(rand() * 10)
where c.collectionname = 'PEM Reptiles' and p.CountAmt is null