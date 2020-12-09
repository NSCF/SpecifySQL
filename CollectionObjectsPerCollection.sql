select c.CollectionName, count(*) as count from collectionobject co
join collection c on c.collectionId = co.CollectionID
group by c.CollectionName