select co.CatalogNumber, t.Name as taxonName, co.CatalogedDate from collectionobject co
left join determination det on co.CollectionObjectID = det.CollectionObjectID
join taxon t on det.TaxonID = t.TaxonID
join agent a on co.CatalogerID = a.AgentID
where a.lastname = "van Greune" and (det.IsCurrent = true or det.IsCurrent is null)
order by co.CatalogNumber
limit 160