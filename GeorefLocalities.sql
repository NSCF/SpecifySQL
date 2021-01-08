select l.localityname, l.NamedPlace, l.RelationToNamedPlace, l.Latitude1, l.Longitude1, 
gcd.GeoRefAccuracy, gcd.GeoRefAccuracyUnits, gcd.Source, gcd.GeoRefDetDate, gcd.GeoRefCompiledDate, gcd.GeoRefRemarks
from locality l 
join geocoorddetail gcd on l.localityid = gcd.localityid
where l.latitude1 is not null
limit 20