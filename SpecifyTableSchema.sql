select slc.name as object, slci.name as property, slci.version, slci.IsHidden as hidden, sliName.text as caption, sliDesc.text as Description, 
slci.type as type, slci.Format, slci.IsRequired as required, slci.PickListName as picklist
from splocalecontainer slc
join splocalecontaineritem slci on slci.SpLocaleContainerID = slc.SpLocaleContainerID
left join splocaleitemstr sliName on sliName.SpLocaleContainerItemNameID = slci.SpLocaleContainerItemID
left join splocaleitemstr sliDesc on sliDesc.SpLocaleContainerItemDescID = slci.SpLocaleContainerItemID
join discipline d on slc.DisciplineID = d.disciplineId
where d.Name like '%herp%' and slc.name ='locality' and slci.type like '%string%'
order by slc.Name, slci.name