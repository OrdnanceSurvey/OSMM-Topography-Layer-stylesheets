CREATE TABLE osmm_topo.topographicarea_style AS SELECT
a.*,
CASE	
	WHEN descriptivegroup ~ 'Building' AND descriptiveterm IS NULL THEN 'Building Fill'
	WHEN descriptivegroup ~ 'General Surface' AND descriptiveterm = 'Multi Surface' THEN 'Multi Surface Fill'
	WHEN descriptivegroup ~ 'General Surface' AND descriptiveterm IS NULL AND make = 'Natural' THEN 'Natural Fill'
	WHEN descriptivegroup ~ 'Road Or Track' AND descriptiveterm IS NULL AND make = 'Manmade' THEN 'Road Or Track Fill'
	WHEN descriptivegroup ~ 'General Surface' AND descriptiveterm IS NULL AND (make = 'Manmade' OR make = 'Unknown') THEN 'Manmade Fill'
	WHEN descriptivegroup ~ 'Roadside' AND make = 'Natural' THEN 'Roadside Natural Fill'
	WHEN descriptivegroup ~ 'Roadside' AND (make = 'Manmade' OR make = 'Unknown') THEN 'Roadside Manmade Fill'
	WHEN descriptivegroup ~ 'Inland Water' AND descriptiveterm IS NULL THEN 'Inland Water Fill'
	WHEN descriptivegroup ~ 'Path' AND descriptiveterm IS NULL THEN 'Path Fill'	
	WHEN descriptivegroup ~ 'Road Or Track' AND descriptiveterm = 'Track' THEN 'Track Fill' 
	WHEN descriptiveterm = 'Slope' THEN 'Slope Fill'
	WHEN descriptivegroup ~ 'Structure' AND (descriptiveterm IS NULL OR descriptiveterm = 'Upper Level Of Communication' OR descriptiveterm = 'Overhead Construction') THEN 'Structure Fill'
	WHEN descriptiveterm = 'Cliff' THEN 'Cliff Fill'
	WHEN descriptiveterm = 'Step' THEN 'Step Fill'
	WHEN descriptiveterm = 'Foreshore' THEN 'Foreshore Fill'
	WHEN descriptiveterm = 'Traffic Calming' THEN 'Traffic Calming Fill' 
	WHEN descriptivegroup = 'Glasshouse' THEN 'Glasshouse Fill'
	WHEN descriptivegroup ~ 'Rail' AND descriptiveterm IS NULL AND make = 'Natural' THEN 'Rail Natural Fill'
	WHEN descriptiveterm = 'Pylon' THEN 'Pylon Fill'
	WHEN descriptivegroup ~ 'Building' AND descriptiveterm = 'Archway'THEN 'Archway Fill'
	WHEN descriptivegroup ~ 'Landform' AND make = 'Natural' THEN 'Landform Natural Fill'
	WHEN descriptivegroup ~ 'Tidal Water' AND descriptiveterm IS NULL THEN 'Tidal Water Fill'
	WHEN descriptivegroup ~ 'Landform' AND make = 'Manmade' THEN 'Landform Manmade Fill'
	WHEN descriptivegroup = 'Rail' AND make = 'Manmade' OR make = 'Unknown' THEN 'Rail Manmade Fill'
	WHEN (descriptiveterm ~ 'Nonconiferous Trees' OR descriptiveterm ~ 'Nonconiferous Trees (Scattered)') AND (descriptiveterm ~ 'Coniferous Trees' OR descriptiveterm ~ 'Coniferous Trees (Scattered)') THEN 'Mixed Woodland Fill'
	WHEN descriptiveterm ~ 'Nonconiferous Trees' OR descriptiveterm ~ 'Nonconiferous Trees (Scattered)' THEN 'Nonconiferous Tree Fill'
	WHEN descriptiveterm ~ 'Coniferous Trees' OR descriptiveterm ~ 'Coniferous Trees (Scattered)' THEN 'Coniferous Tree Fill'
	WHEN descriptiveterm ~ 'Orchard' THEN 'Orchard Fill'
	WHEN descriptiveterm ~ 'Coppice Or Osiers' THEN 'Coppice Or Osiers Fill'
	WHEN descriptiveterm ~ 'Scrub' THEN 'Scrub Fill'
	WHEN descriptiveterm ~ 'Boulders' OR descriptiveterm ~ 'Boulders (Scattered)' THEN 'Boulders Fill'
	WHEN descriptiveterm ~ 'Rock' OR descriptiveterm ~ 'Rock (Scattered)' THEN 'Rock Fill'
	WHEN descriptiveterm ~ 'Scree' THEN 'Scree Fill'
	WHEN descriptiveterm ~ 'Rough Grassland' THEN 'Rough Grassland Fill'
	WHEN descriptiveterm ~ 'Heath' THEN 'Heath Fill'
	WHEN descriptiveterm ~ 'Marsh Reeds Or Saltmarsh' THEN 'Marsh Fill'
	ELSE 'Unclassified' 
	END AS style_description,
CASE	
	WHEN descriptivegroup ~ 'Building' AND descriptiveterm IS NULL THEN 1
	WHEN descriptivegroup ~ 'General Surface' AND descriptiveterm = 'Multi Surface' THEN 2
	WHEN descriptivegroup ~ 'General Surface' AND descriptiveterm IS NULL AND make = 'Natural' THEN 3
	WHEN descriptivegroup ~ 'Road Or Track' AND descriptiveterm IS NULL AND make = 'Manmade' THEN 4
	WHEN descriptivegroup ~ 'General Surface' AND descriptiveterm IS NULL AND (make = 'Manmade' OR make = 'Unknown') THEN 5
	WHEN descriptivegroup ~ 'Roadside' AND make = 'Natural' THEN 6
	WHEN descriptivegroup ~ 'Roadside' AND (make = 'Manmade' OR make = 'Unknown') THEN 7
	WHEN descriptivegroup ~ 'Inland Water' AND descriptiveterm IS NULL THEN 8
	WHEN descriptivegroup ~ 'Path' AND descriptiveterm IS NULL THEN 9	
	WHEN descriptivegroup ~ 'Road Or Track' AND descriptiveterm = 'Track' THEN 10 
	WHEN descriptiveterm = 'Slope' THEN 11
	WHEN descriptivegroup ~ 'Structure' AND (descriptiveterm IS NULL OR descriptiveterm = 'Upper Level Of Communication' OR descriptiveterm = 'Overhead Construction') THEN 12
	WHEN descriptiveterm = 'Cliff' THEN 13
	WHEN descriptiveterm = 'Step' THEN 14
	WHEN descriptiveterm = 'Foreshore' THEN 15
	WHEN descriptiveterm = 'Traffic Calming' THEN 16
	WHEN descriptivegroup = 'Glasshouse' THEN 17
	WHEN descriptivegroup ~ 'Rail' AND descriptiveterm IS NULL AND make = 'Natural' THEN 18
	WHEN descriptiveterm = 'Pylon' THEN 19
	WHEN descriptivegroup ~ 'Building' AND descriptiveterm = 'Archway'THEN 20
	WHEN descriptivegroup ~ 'Landform' AND make = 'Natural' THEN 21
	WHEN descriptivegroup ~ 'Tidal Water' AND descriptiveterm IS NULL THEN 22
	WHEN descriptivegroup ~ 'Landform' AND make = 'Manmade' THEN 23
	WHEN descriptivegroup = 'Rail' AND make = 'Manmade' OR make = 'Unknown' THEN 24
	WHEN (descriptiveterm ~ 'Nonconiferous Trees' OR descriptiveterm ~ 'Nonconiferous Trees (Scattered)') AND (descriptiveterm ~ 'Coniferous Trees' OR descriptiveterm ~ 'Coniferous Trees (Scattered)') THEN 25
	WHEN descriptiveterm ~ 'Nonconiferous Trees' OR descriptiveterm ~ 'Nonconiferous Trees (Scattered)' THEN 26
	WHEN descriptiveterm ~ 'Coniferous Trees' OR descriptiveterm ~ 'Coniferous Trees (Scattered)' THEN 27
	WHEN descriptiveterm ~ 'Orchard' THEN 28
	WHEN descriptiveterm ~ 'Coppice Or Osiers' THEN 29
	WHEN descriptiveterm ~ 'Scrub' THEN 30
	WHEN descriptiveterm ~ 'Boulders' OR descriptiveterm ~ 'Boulders (Scattered)' THEN 31
	WHEN descriptiveterm ~ 'Rock' OR descriptiveterm ~ 'Rock (Scattered)' THEN 32
	WHEN descriptiveterm ~ 'Scree' THEN 33
	WHEN descriptiveterm ~ 'Rough Grassland' THEN 34
	WHEN descriptiveterm ~ 'Heath' THEN 35
	WHEN descriptiveterm ~ 'Marsh Reeds Or Saltmarsh' THEN 36
	ELSE 99 
	END AS style_code
FROM osmm_topo.topographicarea as a;