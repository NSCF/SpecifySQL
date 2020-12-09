select name from taxon t
join taxontreedef ttd on t.TaxonTreeDefID = ttd.TaxonTreeDefID
join discipline d on d.TaxonTreeDefID = ttd.TaxonTreeDefID
join taxontreedefitem ttdi on t.TaxonTreeDefItemID = ttdi.TaxonTreeDefItemID
where ttdi.