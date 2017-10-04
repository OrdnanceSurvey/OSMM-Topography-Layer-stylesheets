UPDATE osmm_topo.topographicarea SET style_description =
CASE
	--Built Environment Descriptive Term Rules
	WHEN descriptiveterm = 'Multi Surface' THEN 'Multi Surface Fill'
	WHEN descriptiveterm = 'Archway' THEN 'Archway Fill'
	WHEN INSTR(descriptiveterm, 'Bridge') > 0 AND (INSTR(descriptivegroup, 'Road Or Track') > 0  OR INSTR(descriptivegroup, 'Roadside') > 0) THEN 'Road Bridge Fill' --NEW
	WHEN INSTR(descriptiveterm, 'Bridge') > 0 AND INSTR(descriptivegroup, 'Rail') > 0 THEN 'Rail Bridge Fill' --NEW
	WHEN INSTR(descriptiveterm, 'Bridge') > 0 THEN 'Bridge Fill' --NEW
	WHEN INSTR(descriptiveterm, 'Level Crossing') >0 THEN 'Level Crossing Fill' --NEW
	WHEN descriptiveterm = 'Traffic Calming' THEN 'Traffic Calming Fill' --NEW
	WHEN descriptiveterm = 'Pylon' THEN 'Pylon Fill'
	WHEN descriptiveterm = 'Track' THEN 'Track Fill'
	WHEN descriptiveterm = 'Step' THEN 'Step Fill'
	WHEN INSTR(descriptiveterm, 'Canal') > 0 THEN 'Canal Fill' --NEW
	WHEN INSTR(descriptiveterm, 'Footbridge') > 0 THEN 'Footbridge Fill' --NEW
	--Natural Environment Descriptive Term Rules
	WHEN (INSTR(descriptiveterm, 'Nonconiferous Trees') > 0  OR INSTR(descriptiveterm, 'Nonconiferous Trees (Scattered)') > 0) AND (INSTR(descriptiveterm, 'Coniferous Trees') > 0 OR INSTR(descriptiveterm, 'Coniferous Trees (Scattered)') > 0) THEN 'Mixed Woodland Fill'
	WHEN INSTR(descriptiveterm, 'Nonconiferous Trees') > 0  OR INSTR(descriptiveterm, 'Nonconiferous Trees (Scattered)') > 0 THEN 'Nonconiferous Tree Fill'
	WHEN INSTR(descriptiveterm, 'Coniferous Trees') > 0  OR INSTR(descriptiveterm, 'Coniferous Trees (Scattered)') > 0 THEN 'Coniferous Tree Fill'
	WHEN INSTR(descriptiveterm, 'Agricultural Land') > 0 THEN 'Agricultural Land Fill' --NEW
	WHEN INSTR(descriptiveterm, 'Orchard') > 0 THEN 'Orchard Fill'
	WHEN INSTR(descriptiveterm, 'Coppice Or Osiers') > 0 THEN 'Coppice Or Osiers Fill'
	WHEN INSTR(descriptiveterm, 'Scrub') > 0 THEN 'Scrub Fill'
	WHEN INSTR(descriptiveterm, 'Boulders') > 0 OR INSTR(descriptiveterm, 'Boulders (Scattered)') > 0 THEN 'Boulders Fill'
	WHEN INSTR(descriptiveterm, 'Rock') > 0 OR INSTR(descriptiveterm, 'Rock (Scattered)') > 0 THEN 'Rock Fill'
	WHEN INSTR(descriptiveterm, 'Scree') > 0 THEN 'Scree Fill'
	WHEN INSTR(descriptiveterm, 'Rough Grassland') > 0 THEN 'Rough Grassland Fill'
	WHEN INSTR(descriptiveterm, 'Heath') > 0  THEN 'Heath Fill'
	WHEN INSTR(descriptiveterm, 'Marsh Reeds Or Saltmarsh') > 0  OR INSTR(descriptiveterm, 'Saltmarsh') > 0  THEN 'Saltmarsh Fill'
	WHEN INSTR(descriptiveterm, 'Sand') > 0  THEN 'Sand Fill' --NEW
	WHEN INSTR(descriptiveterm, 'Mud') > 0  THEN 'Mud Fill' --NEW
	WHEN INSTR(descriptiveterm, 'Shingle') > 0  THEN 'Shingle Fill' --NEW
	WHEN INSTR(descriptiveterm, 'Marsh') > 0  THEN 'Marsh Fill' --NEW
	WHEN INSTR(descriptiveterm, 'Reeds') > 0  THEN 'Reeds Fill' --NEW
	WHEN INSTR(descriptiveterm, 'Foreshore') > 0  THEN 'Foreshore Fill'
	WHEN descriptiveterm = 'Slope' THEN 'Slope Fill'
	WHEN descriptiveterm = 'Cliff' THEN 'Cliff Fill'
	--Descriptive Group Rules
	WHEN INSTR(descriptivegroup, 'Building') > 0  THEN 'Building Fill'
	WHEN INSTR(descriptivegroup, 'General Surface') > 0  AND make = 'Natural' THEN 'Natural Fill'
	WHEN INSTR(descriptivegroup, 'General Surface') > 0  AND (make = 'Manmade' OR make = 'Unknown') THEN 'Manmade Fill'
	WHEN INSTR(descriptivegroup, 'Road Or Track') > 0  AND make = 'Manmade' THEN 'Road Or Track Fill'
	WHEN INSTR(descriptivegroup, 'Roadside') > 0  AND make = 'Natural' THEN 'Roadside Natural Fill'
	WHEN INSTR(descriptivegroup, 'Roadside') > 0  AND (make = 'Manmade' OR make = 'Unknown') THEN 'Roadside Manmade Fill'
	WHEN INSTR(descriptivegroup, 'Inland Water') > 0  THEN 'Inland Water Fill'
	WHEN INSTR(descriptivegroup, 'Path') > 0  THEN 'Path Fill'
	WHEN INSTR(descriptivegroup, 'Rail') > 0  AND (make = 'Manmade' OR make = 'Unknown') THEN 'Rail Manmade Fill'
	WHEN INSTR(descriptivegroup, 'Rail') > 0  AND make = 'Natural' THEN 'Rail Natural Fill'
	WHEN INSTR(descriptivegroup, 'Structure') > 0  THEN 'Structure Fill'
	WHEN INSTR(descriptivegroup, 'Glasshouse') >0  THEN 'Glasshouse Fill'
	WHEN INSTR(descriptivegroup, 'Landform') > 0  AND make = 'Natural' THEN 'Landform Natural Fill'
	WHEN INSTR(descriptivegroup, 'Tidal Water') > 0  THEN 'Tidal Water Fill'
	WHEN INSTR(descriptivegroup, 'Landform') > 0  AND make = 'Manmade' THEN 'Landform Manmade Fill'
	ELSE 'Unclassified'
END,
style_code =
	--Built Environment Descriptive Term Rules
CASE
	WHEN descriptiveterm = 'Multi Surface' THEN 1
	WHEN descriptiveterm = 'Archway' THEN 2
	WHEN INSTR(descriptiveterm, 'Bridge') > 0  AND (INSTR(descriptivegroup, 'Road Or Track') > 0  OR INSTR(descriptivegroup, 'Roadside')  > 0 ) THEN 3 --NEW
	WHEN INSTR(descriptiveterm, 'Bridge') > 0  AND (INSTR(descriptivegroup, 'Rail'))  > 0  THEN 4 --NEW
	WHEN INSTR(descriptiveterm, 'Bridge') > 0  THEN 5 --NEW
	WHEN INSTR(descriptiveterm, 'Level Crossing') > 0  THEN 6 --NEW
	WHEN descriptiveterm = 'Traffic Calming' THEN 7
	WHEN descriptiveterm = 'Pylon' THEN 8
	WHEN descriptiveterm = 'Track' THEN 9
	WHEN descriptiveterm = 'Step' THEN 10
	WHEN INSTR(descriptiveterm, 'Canal') > 0  THEN 11 --NEW
	WHEN INSTR(descriptiveterm, 'Footbridge') > 0  THEN 12 --NEW
	--Natural Environment Descriptive Term Rules
	WHEN (INSTR(descriptiveterm, 'Nonconiferous Trees') > 0  OR INSTR(descriptiveterm, 'Nonconiferous Trees (Scattered)') > 0 ) AND (INSTR(descriptiveterm, 'Coniferous Trees') > 0  OR INSTR(descriptiveterm, 'Coniferous Trees (Scattered)') > 0 ) THEN 13
	WHEN INSTR(descriptiveterm, 'Nonconiferous Trees') > 0  OR INSTR(descriptiveterm, 'Nonconiferous Trees (Scattered)') > 0 THEN 14
	WHEN INSTR(descriptiveterm, 'Coniferous Trees') > 0  OR INSTR(descriptiveterm, 'Coniferous Trees (Scattered)') > 0 THEN 15
	WHEN INSTR(descriptiveterm, 'Agricultural Land') > 0  THEN 16 --NEW
	WHEN INSTR(descriptiveterm, 'Orchard') > 0  THEN 17
	WHEN INSTR(descriptiveterm, 'Coppice Or Osiers') > 0  THEN 18
	WHEN INSTR(descriptiveterm, 'Scrub') > 0  THEN 19
	WHEN INSTR(descriptiveterm, 'Boulders') > 0  OR INSTR(descriptiveterm, 'Boulders (Scattered)') > 0  THEN 20
	WHEN INSTR(descriptiveterm, 'Rock') > 0  OR INSTR(descriptiveterm, 'Rock (Scattered)') > 0  THEN 21
	WHEN INSTR(descriptiveterm, 'Scree') > 0  THEN 22
	WHEN INSTR(descriptiveterm, 'Rough Grassland') > 0  THEN 23
	WHEN INSTR(descriptiveterm, 'Heath') > 0  THEN 24
	WHEN INSTR(descriptiveterm, 'Marsh Reeds Or Saltmarsh') > 0  OR INSTR(descriptiveterm, 'Saltmarsh') > 0  THEN 25
	WHEN INSTR(descriptiveterm, 'Sand') > 0  THEN 26 --NEW
	WHEN INSTR(descriptiveterm, 'Mud') > 0  THEN 27 --NEW
	WHEN INSTR(descriptiveterm, 'Shingle') > 0  THEN 28 --NEW
	WHEN INSTR(descriptiveterm, 'Marsh') > 0  THEN 29 --NEW
	WHEN INSTR(descriptiveterm, 'Reeds') > 0  THEN 30 --NEW
	WHEN INSTR(descriptiveterm, 'Foreshore') > 0  THEN 31
	WHEN descriptiveterm = 'Slope' THEN 32
	WHEN descriptiveterm = 'Cliff' THEN 33
	--Descriptive Group Rules
	WHEN INSTR(descriptivegroup, 'Building') > 0  THEN 34
	WHEN INSTR(descriptivegroup, 'General Surface') > 0  AND make = 'Natural' THEN 35
	WHEN INSTR(descriptivegroup, 'General Surface') > 0  AND (make = 'Manmade' OR make = 'Unknown') THEN 36
	WHEN INSTR(descriptivegroup, 'Road Or Track') > 0  AND make = 'Manmade' THEN 37
	WHEN INSTR(descriptivegroup, 'Roadside') > 0  AND make = 'Natural' THEN 38
	WHEN INSTR(descriptivegroup, 'Roadside') > 0  AND (make = 'Manmade' OR make = 'Unknown') THEN 39
	WHEN INSTR(descriptivegroup, 'Inland Water') > 0  THEN 40
	WHEN INSTR(descriptivegroup, 'Path') > 0  THEN 41
	WHEN INSTR(descriptivegroup, 'Rail') > 0  AND (make = 'Manmade' OR make = 'Unknown') THEN 42
	WHEN INSTR(descriptivegroup, 'Rail') > 0  AND make = 'Natural' THEN 43
	WHEN INSTR(descriptivegroup, 'Structure') > 0  THEN 44
	WHEN descriptivegroup = 'Glasshouse' THEN 45
	WHEN INSTR(descriptivegroup, 'Landform') > 0  AND make = 'Natural' THEN 46
	WHEN INSTR(descriptivegroup, 'Tidal Water') > 0  THEN 47
	WHEN INSTR(descriptivegroup, 'Landform') > 0  AND make = 'Manmade' THEN 48
	ELSE 99
END;
