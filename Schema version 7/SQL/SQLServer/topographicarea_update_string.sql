UPDATE osmm_topo.topographicarea SET style_description = 
CASE
	WHEN CHARINDEX('Building', descriptivegroup) > 0 AND descriptiveterm IS NULL THEN 'Building Fill'
	WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND descriptiveterm = 'Multi Surface' THEN 'Multi Surface Fill'
	WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND descriptiveterm IS NULL AND make = 'Natural' THEN 'Natural Fill'
	WHEN CHARINDEX('Road Or Track', descriptivegroup) > 0 AND descriptiveterm IS NULL AND make =  'Manmade' THEN 'Road Or Track Fill'
	WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND descriptiveterm IS NULL AND (make = 'Manmade' OR make = 'Unknown') THEN 'Manmade Fill'
	WHEN CHARINDEX('Roadside', descriptivegroup) > 0 AND make = 'Natural' THEN 'Roadside Natural Fill'
	WHEN CHARINDEX('Roadside', descriptivegroup) > 0 AND make = 'Manmade' THEN 'Roadside Manmade Fill'
	WHEN CHARINDEX('Inland Water', descriptivegroup) > 0 AND descriptiveterm IS NULL THEN 'Inland Water Fill'
	WHEN CHARINDEX('Path', descriptivegroup) > 0 AND descriptiveterm IS NULL THEN 'Path Fill'
	WHEN CHARINDEX('Road Or Track', descriptivegroup) > 0 AND descriptiveterm = 'Track' THEN 'Track Fill'
	WHEN descriptiveterm = 'Slope' THEN 'Slope Fill'
	WHEN CHARINDEX('Structure', descriptivegroup) > 0 AND (descriptiveterm IS NULL OR descriptiveterm = 'Upper Level Of Communication' OR descriptiveterm = 'Overhead Construction') THEN 'Structure Fill'
	WHEN descriptiveterm = 'Cliff' THEN 'Cliff Fill'
	WHEN descriptiveterm = 'Step' THEN 'Step Fill'
	WHEN descriptiveterm = 'Foreshore' THEN 'Foreshore Fill'
	WHEN descriptiveterm = 'Traffic Calming' THEN 'Traffic Calming Fill'
	WHEN descriptivegroup = 'Glasshouse' THEN 'Glasshouse Fill'
	WHEN CHARINDEX('Rail', descriptivegroup) > 0 AND descriptiveterm IS NULL AND make = 'Natural' THEN 'Rail Natural Fill'
	WHEN descriptiveterm = 'Pylon' THEN 'Pylon Fill'
	WHEN CHARINDEX('Building', descriptivegroup) > 0 AND descriptiveterm = 'Archway' THEN 'Archway Fill'
	WHEN CHARINDEX('Landform', descriptivegroup) > 0 AND make = 'Natural' THEN 'Landform Natural Fill'
	WHEN CHARINDEX('Tidal Water', descriptivegroup) > 0 AND descriptiveterm IS NULL THEN 'Tidal Water Fill'
	WHEN CHARINDEX('Landform', descriptivegroup) > 0 AND make = 'Manmade' THEN 'Landform Manmade Fill'
	WHEN descriptivegroup = 'Rail' AND (make = 'Manmade' OR make = 'Unknown') THEN 'Rail Manmade Fill'
	WHEN (CHARINDEX('Nonconiferous Trees', descriptiveterm) > 0 OR CHARINDEX('Nonconiferous Trees (Scattered)', descriptiveterm) > 0) AND (CHARINDEX('Coniferous Trees', descriptiveterm) > 0 OR CHARINDEX('Coniferous Trees (Scattered)', descriptiveterm) > 0) THEN 'Mixed Woodland Fill'
	WHEN CHARINDEX('Nonconiferous Trees', descriptiveterm) > 0 OR CHARINDEX('Nonconiferous Trees (Scattered)', descriptiveterm) > 0 THEN 'Nonconiferous Tree Fill'
	WHEN CHARINDEX('Coniferous Trees', descriptiveterm) > 0 OR CHARINDEX('Coniferous Trees (Scattered)', descriptiveterm) > 0 THEN 'Coniferous Tree Fill'
	WHEN CHARINDEX('Orchard', descriptiveterm) > 0 THEN 'Orchard Fill'
	WHEN CHARINDEX('Coppice Or Osiers', descriptiveterm) > 0 THEN 'Coppice Or Osiers Fill'
	WHEN CHARINDEX('Scrub', descriptiveterm) > 0 THEN 'Scrub Fill'
	WHEN CHARINDEX('Boulders', descriptiveterm) > 0 OR CHARINDEX(descriptiveterm, 'Boulders (Scattered)') > 0 THEN 'Boulders Fill'
	WHEN CHARINDEX('Rock', descriptiveterm) > 0 OR CHARINDEX(descriptiveterm, 'Rock (Scattered)') > 0 THEN 'Rock Fill'
	WHEN CHARINDEX('Scree', descriptiveterm) > 0 THEN 'Scree Fill'
	WHEN CHARINDEX('Rough Grassland', descriptiveterm) > 0 THEN 'Rough Grassland Fill'
	WHEN CHARINDEX('Heath', descriptiveterm) > 0 THEN 'Heath Fill'
	WHEN CHARINDEX('Marsh Reeds Or Saltmarsh', descriptiveterm) > 0 THEN 'Marsh Fill'
	ELSE 'Unclassified' 
END,
style_code = 
CASE
	WHEN CHARINDEX('Building', descriptivegroup) > 0 AND descriptiveterm IS NULL THEN 1
	WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND descriptiveterm = 'Multi Surface' THEN 2
	WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND descriptiveterm IS NULL AND make = 'Natural' THEN 3
	WHEN CHARINDEX('Road Or Track', descriptivegroup) > 0 AND descriptiveterm IS NULL AND make =  'Manmade' THEN 4
	WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND descriptiveterm IS NULL AND (make = 'Manmade' OR make = 'Unknown') THEN 5
	WHEN CHARINDEX('Roadside', descriptivegroup) > 0 AND make = 'Natural' THEN 6
	WHEN CHARINDEX('Roadside', descriptivegroup) > 0 AND make = 'Manmade' THEN 7
	WHEN CHARINDEX('Inland Water', descriptivegroup) > 0 AND descriptiveterm IS NULL THEN 8
	WHEN CHARINDEX('Path', descriptivegroup) > 0 AND descriptiveterm IS NULL THEN 9
	WHEN CHARINDEX('Road Or Track', descriptivegroup) > 0 AND descriptiveterm = 'Track' THEN 10
	WHEN descriptiveterm = 'Slope' THEN 11
	WHEN CHARINDEX('Structure', descriptivegroup) > 0 AND (descriptiveterm IS NULL OR descriptiveterm = 'Upper Level Of Communication' OR descriptiveterm = 'Overhead Construction') THEN 12
	WHEN descriptiveterm = 'Cliff' THEN 13
	WHEN descriptiveterm = 'Step' THEN 14
	WHEN descriptiveterm = 'Foreshore' THEN 15
	WHEN descriptiveterm = 'Traffic Calming' THEN 16
	WHEN descriptivegroup = 'Glasshouse' THEN 17
	WHEN CHARINDEX('Rail', descriptivegroup) > 0 AND descriptiveterm IS NULL AND make = 'Natural' THEN 18
	WHEN descriptiveterm = 'Pylon' THEN 19
	WHEN CHARINDEX('Building', descriptivegroup) > 0 AND descriptiveterm = 'Archway' THEN 20
	WHEN CHARINDEX('Landform', descriptivegroup) > 0 AND make = 'Natural' THEN 21
	WHEN CHARINDEX('Tidal Water', descriptivegroup) > 0 AND descriptiveterm IS NULL THEN 22
	WHEN CHARINDEX('Landform', descriptivegroup) > 0 AND make = 'Manmade' THEN 23
	WHEN descriptivegroup = 'Rail' AND (make = 'Manmade' OR make = 'Unknown') THEN 24
	WHEN (CHARINDEX('Nonconiferous Trees', descriptiveterm) > 0 OR CHARINDEX('Nonconiferous Trees (Scattered)', descriptiveterm) > 0) AND (CHARINDEX('Coniferous Trees', descriptiveterm) > 0 OR CHARINDEX('Coniferous Trees (Scattered)', descriptiveterm) > 0) THEN 25
	WHEN CHARINDEX('Nonconiferous Trees', descriptiveterm) > 0 OR CHARINDEX('Nonconiferous Trees (Scattered)', descriptiveterm) > 0 THEN 26
	WHEN CHARINDEX('Coniferous Trees', descriptiveterm) > 0 OR CHARINDEX('Coniferous Trees (Scattered)', descriptiveterm) > 0 THEN 27
	WHEN CHARINDEX('Orchard', descriptiveterm) > 0 THEN 28
	WHEN CHARINDEX('Coppice Or Osiers', descriptiveterm) > 0 THEN 29
	WHEN CHARINDEX('Scrub', descriptiveterm) > 0 THEN 30
	WHEN CHARINDEX('Boulders', descriptiveterm) > 0 OR CHARINDEX(descriptiveterm, 'Boulders (Scattered)') > 0 THEN 31
	WHEN CHARINDEX('Rock', descriptiveterm) > 0 OR CHARINDEX(descriptiveterm, 'Rock (Scattered)') > 0 THEN 32
	WHEN CHARINDEX('Scree', descriptiveterm) > 0 THEN 33
	WHEN CHARINDEX('Rough Grassland', descriptiveterm) > 0 THEN 34
	WHEN CHARINDEX('Heath', descriptiveterm) > 0 THEN 35
	WHEN CHARINDEX('Marsh Reeds Or Saltmarsh', descriptiveterm) > 0 THEN 36
	ELSE 99 
END;
