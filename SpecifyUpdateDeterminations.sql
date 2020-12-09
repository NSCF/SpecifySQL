update determination d 
join collectionobject co on d.CollectionObjectID = co.CollectionObjectID
join collection c on co.CollectionID = c.collectionId
set d.confidence = null 
where c.CollectionName = "ZEN355" and d.Confidence like'%high%'