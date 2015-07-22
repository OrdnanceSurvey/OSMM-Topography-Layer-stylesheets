UPDATE osmm_topo.topographicarea SET style_description = 
CASE
	WHEN INSTR(descriptivegroup, 'Building') > 0 AND descriptiveterm IS NULL THEN 'Building Fill'
	WHEN INSTR(descriptivegroup, 'General Surface') > 0 AND descriptiveterm = 'Multi Surface' THEN 'Multi Surface Fill'
	WHEN INSTR(descriptivegroup, 'General Surface') > 0 AND descriptiveterm IS NULL AND make = 'Natural' THEN 'Natural Fill'
	WHEN INSTR(descriptivegroup, 'Road Or Track') > 0 AND descriptiveterm IS NULL AND make =  'Manmade' THEN 'Road Or Track Fill'
	WHEN INSTR(descriptivegroup, 'General Surface') > 0 AND descriptiveterm IS NULL AND (make = 'Manmade' OR make = 'Unknown') THEN 'Manmade Fill'
	WHEN INSTR(descriptivegroup, 'Roadside') > 0 AND make = 'Natural' THEN 'Roadside Natural Fill'
	WHEN INSTR(descriptivegroup, 'Roadside') > 0 AND make = 'Manmade' THEN 'Roadside Manmade Fill'
	WHEN INSTR(descriptivegroup, 'Inland Water') > 0 AND descriptiveterm IS NULL THEN 'Inland Water Fill'
	WHEN INSTR(descriptivegroup, 'Path') > 0 AND descriptiveterm IS NULL THEN 'Path Fill'
	WHEN INSTR(descriptivegroup, 'Road Or Track') > 0 AND descriptiveterm = 'Track' THEN 'Track Fill'
	WHEN descriptiveterm = 'Slope' THEN 'Slope Fill'
	WHEN INSTR(descriptivegroup, 'Structure') > 0 AND (descriptiveterm IS NULL OR descriptiveterm = 'Upper Level Of Communication' OR descriptiveterm = 'Overhead Construction') THEN 'Structure Fill'
	WHEN descriptiveterm = 'Cliff' THEN 'Cliff Fill'
	WHEN descriptiveterm = 'Step' THEN 'Step Fill'
	WHEN descriptiveterm = 'Foreshore' THEN 'Foreshore Fill'
	WHEN descriptiveterm = 'Traffic Calming' THEN 'Traffic Calming Fill'
	WHEN descriptivegroup = 'Glasshouse' THEN 'Glasshouse Fill'
	WHEN INSTR(descriptivegroup, 'Rail') > 0 AND descriptiveterm IS NULL AND make = 'Natural' THEN 'Rail Natural Fill'
	WHEN descriptiveterm = 'Pylon' THEN 'Pylon Fill'
	WHEN INSTR(descriptivegroup, 'Building') > 0 AND descriptiveterm = 'Archway' THEN 'Archway Fill'
	WHEN INSTR(descriptivegroup, 'Landform') > 0 AND make = 'Natural' THEN 'Landform Natural Fill'
	WHEN INSTR(descriptivegroup, 'Tidal Water') > 0 AND descriptiveterm IS NULL THEN 'Tidal Water Fill'
	WHEN INSTR(descriptivegroup, 'Landform') > 0 AND make = 'Manmade' THEN 'Landform Manmade Fill'
	WHEN descriptivegroup = 'Rail' AND (make = 'Manmade' OR make = 'Unknown') THEN 'Rail Manmade Fill'
	WHEN (INSTR(descriptiveterm, 'Nonconiferous Trees') > 0 OR INSTR(descriptiveterm,'Nonconiferous Trees (Scattered)') > 0) AND (INSTR(descriptiveterm, 'Coniferous Trees') > 0 OR INSTR(descriptiveterm , 'Coniferous Trees (Scattered)') > 0) THEN 'Mixed Woodland Fill'
	WHEN INSTR(descriptiveterm, 'Nonconiferous Trees') > 0 OR INSTR(descriptiveterm, 'Nonconiferous Trees (Scattered)') > 0 THEN 'Nonconiferous Tree Fill'
	WHEN INSTR(descriptiveterm, 'Coniferous Trees') > 0 OR INSTR(descriptiveterm, 'Coniferous Trees (Scattered)') > 0 THEN 'Coniferous Tree Fill'
	WHEN INSTR(descriptiveterm, 'Orchard') > 0 THEN 'Orchard Fill'
	WHEN INSTR(descriptiveterm, 'Coppice Or Osiers') > 0 THEN 'Coppice Or Osiers Fill'
	WHEN INSTR(descriptiveterm, 'Scrub') > 0 THEN 'Scrub Fill'
	WHEN INSTR(descriptiveterm, 'Boulders') > 0 OR INSTR(descriptiveterm, 'Boulders (Scattered)') > 0 THEN 'Boulders Fill'
	WHEN INSTR(descriptiveterm, 'Rock') > 0 OR INSTR(descriptiveterm, 'Rock (Scattered)') > 0 THEN 'Rock Fill'
	WHEN INSTR(descriptiveterm, 'Scree') > 0 THEN 'Scree Fill'
	WHEN INSTR(descriptiveterm, 'Rough Grassland') > 0 THEN 'Rough Grassland Fill'
	WHEN INSTR(descriptiveterm, 'Heath') > 0 THEN 'Heath Fill'
	WHEN INSTR(descriptiveterm, 'Marsh Reeds Or Saltmarsh') > 0 THEN 'Marsh Fill'
	ELSE 'Unclassified' 
END,
style_code = 
CASE
	WHEN INSTR(descriptivegroup, 'Building') > 0 AND descriptiveterm IS NULL THEN 1
	WHEN INSTR(descriptivegroup, 'General Surface') > 0 AND descriptiveterm = 'Multi Surface' THEN 2
	WHEN INSTR(descriptivegroup, 'General Surface') > 0 AND descriptiveterm IS NULL AND make = 'Natural' THEN 3
	WHEN INSTR(descriptivegroup, 'Road Or Track') > 0 AND descriptiveterm IS NULL AND make =  'Manmade' THEN 4
	WHEN INSTR(descriptivegroup, 'General Surface') > 0 AND descriptiveterm IS NULL AND (make = 'Manmade' OR make = 'Unknown') THEN 5
	WHEN INSTR(descriptivegroup, 'Roadside') > 0 AND make = 'Natural' THEN 6
	WHEN INSTR(descriptivegroup, 'Roadside') > 0 AND make = 'Manmade' THEN 7
	WHEN INSTR(descriptivegroup, 'Inland Water') > 0 AND descriptiveterm IS NULL THEN 8
	WHEN INSTR(descriptivegroup, 'Path') > 0 AND descriptiveterm IS NULL THEN 9
	WHEN INSTR(descriptivegroup, 'Road Or Track') > 0 AND descriptiveterm = 'Track' THEN 10
	WHEN descriptiveterm = 'Slope' THEN 11
	WHEN INSTR(descriptivegroup, 'Structure') > 0 AND (descriptiveterm IS NULL OR descriptiveterm = 'Upper Level Of Communication' OR descriptiveterm = 'Overhead Construction') THEN 12
	WHEN descriptiveterm = 'Cliff' THEN 13
	WHEN descriptiveterm = 'Step' THEN 14
	WHEN descriptiveterm = 'Foreshore' THEN 15
	WHEN descriptiveterm = 'Traffic Calming' THEN 16
	WHEN descriptivegroup = 'Glasshouse' THEN 17
	WHEN INSTR(descriptivegroup, 'Rail') > 0 AND descriptiveterm IS NULL AND make = 'Natural' THEN 18
	WHEN descriptiveterm = 'Pylon' THEN 19
	WHEN INSTR(descriptivegroup, 'Building') > 0 AND descriptiveterm = 'Archway' THEN 20
	WHEN INSTR(descriptivegroup, 'Landform') > 0 AND make = 'Natural' THEN 21
	WHEN INSTR(descriptivegroup, 'Tidal Water') > 0 AND descriptiveterm IS NULL THEN 22
	WHEN INSTR(descriptivegroup, 'Landform') > 0 AND make = 'Manmade' THEN 23
	WHEN descriptivegroup = 'Rail' AND (make = 'Manmade' OR make = 'Unknown') THEN 24
	WHEN (INSTR(descriptiveterm, 'Nonconiferous Trees') > 0 OR INSTR(descriptiveterm,'Nonconiferous Trees (Scattered)') > 0) AND (INSTR(descriptiveterm, 'Coniferous Trees') > 0 OR INSTR(descriptiveterm , 'Coniferous Trees (Scattered)') > 0) THEN 25
	WHEN INSTR(descriptiveterm, 'Nonconiferous Trees') > 0 OR INSTR(descriptiveterm, 'Nonconiferous Trees (Scattered)') > 0 THEN 26
	WHEN INSTR(descriptiveterm, 'Coniferous Trees') > 0 OR INSTR(descriptiveterm, 'Coniferous Trees (Scattered)') > 0 THEN 27
	WHEN INSTR(descriptiveterm, 'Orchard') > 0 THEN 28
	WHEN INSTR(descriptiveterm, 'Coppice Or Osiers') > 0 THEN 29
	WHEN INSTR(descriptiveterm, 'Scrub') > 0 THEN 30
	WHEN INSTR(descriptiveterm, 'Boulders') > 0 OR INSTR(descriptiveterm, 'Boulders (Scattered)') > 0 THEN 31
	WHEN INSTR(descriptiveterm, 'Rock') > 0 OR INSTR(descriptiveterm, 'Rock (Scattered)') > 0 THEN 32
	WHEN INSTR(descriptiveterm, 'Scree') > 0 THEN 33
	WHEN INSTR(descriptiveterm, 'Rough Grassland') > 0 THEN 34
	WHEN INSTR(descriptiveterm, 'Heath') > 0 THEN 35
	WHEN INSTR(descriptiveterm, 'Marsh Reeds Or Saltmarsh') > 0 THEN 36
	ELSE 99 
END;