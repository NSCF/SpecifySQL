select d.name, c.collectionname from collection c
join discipline d on c.disciplineid = d.disciplineId
order by d.name