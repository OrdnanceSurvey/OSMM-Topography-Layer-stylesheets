CREATE TABLE osmm_topo.topographicarea_style AS SELECT
a.*,
CASE
	--Built Environment Descriptive Term Rules
	WHEN descriptiveterm = '{"Multi Surface"}' THEN 'Multi Surface Fill'
	WHEN descriptiveterm = '{Archway}'THEN 'Archway Fill'
	WHEN descriptiveterm @> '{Bridge}' AND (descriptivegroup @> '{"Road Or Track"}' OR descriptivegroup @> '{Roadside}') THEN 'Road Bridge Fill' --NEW
	WHEN descriptiveterm @> '{Bridge}' AND descriptivegroup @> '{Rail}' THEN 'Rail Bridge Fill' --NEW
	WHEN descriptiveterm @> '{Bridge}' THEN 'Bridge Fill' --NEW
	WHEN descriptiveterm @> '{"Level Crossing"}' THEN 'Level Crossing Fill' --NEW
	WHEN descriptiveterm = '{"Traffic Calming"}' THEN 'Traffic Calming Fill' --NEW
	WHEN descriptiveterm = '{Pylon}' THEN 'Pylon Fill'
	WHEN descriptiveterm = '{Track}' THEN 'Track Fill'
	WHEN descriptiveterm = '{Step}' THEN 'Step Fill'
	WHEN descriptiveterm @> '{Canal}' THEN 'Canal Fill' --NEW
	WHEN descriptiveterm @> '{Footbridge}' THEN 'Footbridge Fill' --NEW
	--Natural Environment Descriptive Term Rules
	WHEN (descriptiveterm @> '{"Nonconiferous Trees"}' OR descriptiveterm @> '{"Nonconiferous Trees (Scattered)"}') AND (descriptiveterm @> '{"Coniferous Trees"}' OR descriptiveterm @> '{"Coniferous Trees (Scattered)"}') THEN 'Mixed Woodland Fill'
	WHEN descriptiveterm @> '{"Nonconiferous Trees"}' OR descriptiveterm @> '{"Nonconiferous Trees (Scattered)"}' THEN 'Nonconiferous Tree Fill'
	WHEN descriptiveterm @> '{"Coniferous Trees"}' OR descriptiveterm @> '{"Coniferous Trees (Scattered)"}' THEN 'Coniferous Tree Fill'
	WHEN descriptiveterm @> '{"Agricultural Land"}' THEN 'Agricultural Land Fill' --NEW
	WHEN descriptiveterm @> '{Orchard}' THEN 'Orchard Fill'
	WHEN descriptiveterm @> '{"Coppice Or Osiers"}' THEN 'Coppice Or Osiers Fill'
	WHEN descriptiveterm @> '{Scrub}' THEN 'Scrub Fill'
	WHEN descriptiveterm @> '{Boulders}' OR descriptiveterm @> '{"Boulders (Scattered)"}' THEN 'Boulders Fill'
	WHEN descriptiveterm @> '{Rock}' OR descriptiveterm @> '{"Rock (Scattered)"}' THEN 'Rock Fill'
	WHEN descriptiveterm @> '{Scree}' THEN 'Scree Fill'
	WHEN descriptiveterm @> '{"Rough Grassland"}' THEN 'Rough Grassland Fill'
	WHEN descriptiveterm @> '{Heath}' THEN 'Heath Fill'
	WHEN descriptiveterm @> '{"Marsh Reeds Or Saltmarsh"}' OR descriptiveterm @> '{Saltmarsh}' THEN 'Saltmarsh Fill'
	WHEN descriptiveterm @> '{Sand}' THEN 'Sand Fill' --NEW
	WHEN descriptiveterm @> '{Mud}' THEN 'Mud Fill' --NEW
	WHEN descriptiveterm @> '{Shingle}' THEN 'Shingle Fill' --NEW
	WHEN descriptiveterm @> '{Marsh}' THEN 'Marsh Fill' --NEW
	WHEN descriptiveterm @> '{Reeds}' THEN 'Reeds Fill' --NEW
	WHEN descriptiveterm @> '{Foreshore}' THEN 'Foreshore Fill'
	WHEN descriptiveterm = '{Slope}' THEN 'Slope Fill'
	WHEN descriptiveterm = '{Cliff}' THEN 'Cliff Fill'
	--Descriptive Group Rules
	WHEN descriptivegroup @> '{Building}' THEN 'Building Fill'
	WHEN descriptivegroup @> '{"General Surface"}' AND make = 'Natural' THEN 'Natural Fill'
	WHEN descriptivegroup @> '{"General Surface"}' AND (make = 'Manmade' OR make = 'Unknown') THEN 'Manmade Fill'
	WHEN descriptivegroup @> '{"Road Or Track"}' AND make = 'Manmade' THEN 'Road Or Track Fill'
	WHEN descriptivegroup @> '{Roadside}' AND make = 'Natural' THEN 'Roadside Natural Fill'
	WHEN descriptivegroup @> '{Roadside}' AND (make = 'Manmade' OR make = 'Unknown') THEN 'Roadside Manmade Fill'
	WHEN descriptivegroup @> '{"Inland Water"}' THEN 'Inland Water Fill'
	WHEN descriptivegroup @> '{Path}' THEN 'Path Fill'
	WHEN descriptivegroup @> '{Rail}' AND (make = 'Manmade' OR make = 'Unknown') THEN 'Rail Manmade Fill'
	WHEN descriptivegroup @> '{Rail}' AND make = 'Natural' THEN 'Rail Natural Fill'
	WHEN descriptivegroup @> '{Structure}' THEN 'Structure Fill'
	WHEN descriptivegroup = '{Glasshouse}' THEN 'Glasshouse Fill'
	WHEN descriptivegroup @> '{Landform}' AND make = 'Natural' THEN 'Landform Natural Fill'
	WHEN descriptivegroup @> '{"Tidal Water"}' THEN 'Tidal Water Fill'
	WHEN descriptivegroup @> '{Landform}' AND make = 'Manmade' THEN 'Landform Manmade Fill'
	ELSE 'Unclassified'
	END AS style_description,
	--Built Environment Descriptive Term Rules
CASE
	WHEN descriptiveterm = '{"Multi Surface"}' THEN 1
	WHEN descriptiveterm = '{Archway}'THEN 2
	WHEN descriptiveterm @> '{Bridge}' AND (descriptivegroup @> '{"Road Or Track"}' OR descriptivegroup @> '{Roadside}') THEN 3 --NEW
	WHEN descriptiveterm @> '{Bridge}' AND descriptivegroup @> '{Rail}' THEN 4 --NEW
	WHEN descriptiveterm @> '{Bridge}' THEN 5 --NEW
	WHEN descriptiveterm @> '{"Level Crossing"}' THEN 6 --NEW
	WHEN descriptiveterm = '{"Traffic Calming"}' THEN 7
	WHEN descriptiveterm = '{Pylon}' THEN 8
	WHEN descriptiveterm = '{Track}' THEN 9
	WHEN descriptiveterm = '{Step}' THEN 10
	WHEN descriptiveterm @> '{Canal}' THEN 11 --NEW
	WHEN descriptiveterm @> '{Footbridge}' THEN 12 --NEW
	--Natural Environment Descriptive Term Rules
	WHEN (descriptiveterm @> '{"Nonconiferous Trees"}' OR descriptiveterm @> '{"Nonconiferous Trees (Scattered)"}') AND (descriptiveterm @> '{"Coniferous Trees"}' OR descriptiveterm @> '{"Coniferous Trees (Scattered)"}') THEN 13
	WHEN descriptiveterm @> '{"Nonconiferous Trees"}' OR descriptiveterm @> '{"Nonconiferous Trees (Scattered)"}' THEN 14
	WHEN descriptiveterm @> '{"Coniferous Trees"}' OR descriptiveterm @> '{"Coniferous Trees (Scattered)"}' THEN 15
	WHEN descriptiveterm @> '{"Agricultural Land"}' THEN 16 --NEW
	WHEN descriptiveterm @> '{Orchard}' THEN 17
	WHEN descriptiveterm @> '{"Coppice Or Osiers"}' THEN 18
	WHEN descriptiveterm @> '{Scrub}' THEN 19
	WHEN descriptiveterm @> '{Boulders}' OR descriptiveterm @> '{"Boulders (Scattered)"}' THEN 20
	WHEN descriptiveterm @> '{Rock}' OR descriptiveterm @> '{"Rock (Scattered)"}' THEN 21
	WHEN descriptiveterm @> '{Scree}' THEN 22
	WHEN descriptiveterm @> '{"Rough Grassland"}' THEN 23
	WHEN descriptiveterm @> '{Heath}' THEN 24
	WHEN descriptiveterm @> '{"Marsh Reeds Or Saltmarsh"}' OR descriptiveterm @> '{Saltmarsh}' THEN 25
	WHEN descriptiveterm @> '{Sand}' THEN 26 --NEW
	WHEN descriptiveterm @> '{Mud}' THEN 27 --NEW
	WHEN descriptiveterm @> '{Shingle}' THEN 28 --NEW
	WHEN descriptiveterm @> '{Marsh}' THEN 29 --NEW
	WHEN descriptiveterm @> '{Reeds}' THEN 30 --NEW
	WHEN descriptiveterm @> '{Foreshore}' THEN 31
	WHEN descriptiveterm = '{Slope}' THEN 32
	WHEN descriptiveterm = '{Cliff}' THEN 33
	--Descriptive Group Rules
	WHEN descriptivegroup @> '{Building}' THEN 34
	WHEN descriptivegroup @> '{"General Surface"}' AND make = 'Natural' THEN 35
	WHEN descriptivegroup @> '{"General Surface"}' AND (make = 'Manmade' OR make = 'Unknown') THEN 36
	WHEN descriptivegroup @> '{"Road Or Track"}' AND make = 'Manmade' THEN 37
	WHEN descriptivegroup @> '{Roadside}' AND make = 'Natural' THEN 38
	WHEN descriptivegroup @> '{Roadside}' AND (make = 'Manmade' OR make = 'Unknown') THEN 39
	WHEN descriptivegroup @> '{"Inland Water"}' THEN 40
	WHEN descriptivegroup @> '{Path}' THEN 41
	WHEN descriptivegroup @> '{Rail}' AND (make = 'Manmade' OR make = 'Unknown') THEN 42
	WHEN descriptivegroup @> '{Rail}' AND make = 'Natural' THEN 43
	WHEN descriptivegroup @> '{Structure}' THEN 44
	WHEN descriptivegroup = '{Glasshouse}' THEN 45
	WHEN descriptivegroup @> '{Landform}' AND make = 'Natural' THEN 46
	WHEN descriptivegroup @> '{"Tidal Water"}' THEN 47
	WHEN descriptivegroup @> '{Landform}' AND make = 'Manmade' THEN 48
	ELSE 99
	END AS style_code
	FROM osmm_topo.topographicarea a;
