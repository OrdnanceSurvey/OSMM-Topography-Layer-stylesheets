UPDATE osmm_topo.topographicarea SET style_description = 
CASE
    --Built Environment Descriptive Term Rules
    WHEN descriptiveterm = 'Multi Surface' THEN 'Multi Surface Fill'
    WHEN descriptiveterm = 'Archway' THEN 'Archway Fill'
    WHEN CHARINDEX('Bridge', descriptiveterm) > 0 AND (CHARINDEX('Road or Track', descriptivegroup) > 0 OR CHARINDEX('Roadside', descriptivegroup) > 0) THEN 'Road Bridge Fill'
    WHEN CHARINDEX('Bridge', descriptiveterm) > 0 AND CHARINDEX('Rail', descriptivegroup) > 0 THEN 'Rail Bridge Fill'
    WHEN CHARINDEX('Bridge', descriptiveterm) > 0 THEN 'Bridge Fill'
    WHEN CHARINDEX('Level Crossing', descriptiveterm) > 0 THEN 'Level Crossing Fill'
    WHEN descriptiveterm = 'Traffic Calming' THEN 'Traffic Calming Fill' 
	WHEN descriptiveterm = 'Pylon' THEN 'Pylon Fill'
	WHEN descriptiveterm = 'Track' THEN 'Track Fill'
	WHEN descriptiveterm = 'Step' THEN 'Step Fill'
    WHEN CHARINDEX('Canal', descriptiveterm) > 0 THEN 'Canal Fill'
    WHEN CHARINDEX('Footbridge', descriptiveterm) > 0 THEN 'Footbridge Fill'
    --Natural Envrionment Descriptive Term Rules
    WHEN (CHARINDEX('Nonconiferous Trees', descriptiveterm) > 0 OR CHARINDEX('Nonconiferous Trees (Scattered)', descriptiveterm) > 0) AND (CHARINDEX('Coniferous Trees', descriptiveterm) > 0 OR CHARINDEX('Coniferous Trees (Scattered)', descriptiveterm) > 0) THEN 'Mixed Woodland Fill'
    WHEN CHARINDEX('Nonconiferous Trees', descriptiveterm) > 0 OR CHARINDEX('Nonconiferous Trees (Scattered)', descriptiveterm) > 0 THEN 'Nonconiferous Tree Fill'
    WHEN CHARINDEX('Coniferous Trees', descriptiveterm) > 0 OR CHARINDEX('Coniferous Trees (Scattered)', descriptiveterm) > 0 THEN 'Coniferous Tree Fill'
    WHEN CHARINDEX('Agricultural Land', descriptiveterm) > 0 THEN 'Agricultural Land Fill'
    WHEN CHARINDEX('Orchard', descriptiveterm) > 0 THEN 'Orchard Fill'
    WHEN CHARINDEX('Coppice Or Osiers', descriptiveterm) > 0 THEN 'Coppice Or Osiers Fill'
	WHEN CHARINDEX('Scrub', descriptiveterm) > 0 THEN 'Scrub Fill'
	WHEN CHARINDEX('Boulders', descriptiveterm) > 0 OR CHARINDEX('Boulders (Scattered)', descriptiveterm) > 0 THEN 'Boulders Fill'
    WHEN CHARINDEX('Rock', descriptiveterm) > 0 OR CHARINDEX( 'Rock (Scattered)', descriptiveterm) > 0 THEN 'Rock Fill'
	WHEN CHARINDEX('Scree', descriptiveterm) > 0 THEN 'Scree Fill'
	WHEN CHARINDEX('Rough Grassland', descriptiveterm) > 0 THEN 'Rough Grassland Fill'
	WHEN CHARINDEX('Heath', descriptiveterm) > 0 THEN 'Heath Fill'
    WHEN CHARINDEX('Marsh Reeds Or Saltmarsh', descriptiveterm) > 0 OR CHARINDEX('Saltmarsh', descriptiveterm) > 0 THEN 'Saltmarsh Fill'
    WHEN CHARINDEX('Sand', descriptiveterm) > 0 THEN 'Sand Fill'
    WHEN CHARINDEX('Mud', descriptiveterm) > 0 THEN 'Mud Fill'
    WHEN CHARINDEX('Shingle', descriptiveterm) > 0 THEN 'Shingle Fill'
    WHEN CHARINDEX('Marsh', descriptiveterm) > 0 THEN 'Marsh Fill'
    WHEN CHARINDEX('Reeds', descriptiveterm) > 0 THEN 'Reeds Fill'
    WHEN CHARINDEX('Foreshore', descriptiveterm) > 0 THEN 'Foreshore Fill'
    WHEN descriptiveterm = 'Slope' THEN 'Slope Fill'
	WHEN descriptiveterm = 'Cliff' THEN 'Cliff Fill'
	--Descriptive Group Rules
    WHEN CHARINDEX('Building', descriptivegroup) > 0 THEN 'Building Fill'
    WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND make = 'Natural' THEN 'Natural Fill'
    WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND (make = 'Manmade' OR make = 'Unknown') THEN 'Manmade Fill'
    WHEN CHARINDEX('Road Or Track', descriptivegroup) > 0 AND make = 'Manmade' THEN 'Road Or Track Fill'
    WHEN CHARINDEX('Roadside', descriptivegroup) > 0 AND make = 'Natural' THEN 'Roadside Natural Fill'
    WHEN CHARINDEX('Roadside', descriptivegroup) > 0 AND (make = 'Manmade' OR make = 'Unknown') THEN 'Roadside Manmade Fill'
    WHEN CHARINDEX('Inland Water', descriptivegroup) > 0 THEN 'Inland Water Fill'
    WHEN CHARINDEX('Path', descriptivegroup) > 0 THEN 'Path Fill'
    WHEN CHARINDEX('Rail', descriptivegroup) > 0 AND (make = 'Manmade' OR make = 'Unknown') THEN 'Rail Manmade Fill'
    WHEN CHARINDEX('Rail', descriptivegroup) > 0 AND make = 'Natural' THEN 'Rail Natural Fill'
    WHEN CHARINDEX('Structure', descriptivegroup) > 0 THEN 'Structure Fill'
    WHEN CHARINDEX('Glasshouse', descriptivegroup) > 0 THEN 'Glasshouse Fill'
    WHEN CHARINDEX('Landform', descriptivegroup) > 0 AND make = 'Natural' THEN 'Landform Natural Fill'
    WHEN CHARINDEX('Tidal Water', descriptivegroup) > 0 THEN 'Tidal Water Fill'
    WHEN CHARINDEX('Landform', descriptivegroup) > 0 AND make = 'Manmade' THEN 'Landform Manmade Fill'
    ELSE 'Unclassified' 
END,
style_code =     
    ----Built Environment Descriptive Term Rules
CASE 
    WHEN descriptiveterm = 'Multi Surface' THEN 1
	WHEN descriptiveterm = 'Archway' THEN 2
    WHEN CHARINDEX('Bridge', descriptiveterm) > 0 AND (CHARINDEX('Road Or Track', descriptivegroup) > 0 OR CHARINDEX('Roadside', descriptivegroup) > 0 ) THEN 3
    WHEN CHARINDEX('Bridge', descriptiveterm) > 0 AND (CHARINDEX('Rail', descriptivegroup)) > 0 THEN 4
    WHEN CHARINDEX('Bridge', descriptiveterm) > 0 THEN 5 
    WHEN CHARINDEX('Level Crossing', descriptiveterm) > 0 THEN 6 
    WHEN descriptiveterm = 'Traffic Calming' THEN 7
	WHEN descriptiveterm = 'Pylon' THEN 8
	WHEN descriptiveterm = 'Track' THEN 9
	WHEN descriptiveterm = 'Step' THEN 10
    WHEN CHARINDEX('Canal', descriptiveterm) > 0 THEN 11
    WHEN CHARINDEX('Footbridge', descriptiveterm) > 0 THEN 12
    --Natural Environment Descriptive Term Rules
    WHEN (CHARINDEX('Nonconiferous Trees', descriptiveterm) > 0 OR CHARINDEX('Nonconiferous Trees (Scattered)', descriptiveterm) > 0) AND (CHARINDEX('Coniferous Trees', descriptiveterm) > 0 OR CHARINDEX('Coniferous Trees (Scattered)', descriptiveterm) > 0) THEN 13
    WHEN CHARINDEX('Nonconiferous Trees', descriptiveterm) > 0 OR CHARINDEX('Nonconiferous Trees (Scattered)', descriptiveterm) > 0 THEN 14
	WHEN CHARINDEX('Coniferous Trees', descriptiveterm) > 0 OR CHARINDEX('Coniferous Trees (Scattered)', descriptiveterm) > 0 THEN 15
    WHEN CHARINDEX('Agricultural Land', descriptiveterm) > 0 THEN 16 
    WHEN CHARINDEX('Orchard', descriptiveterm) > 0 THEN 17
    WHEN CHARINDEX('Coppice Or Osiers', descriptiveterm) > 0 THEN 18
	WHEN CHARINDEX('Scrub', descriptiveterm) > 0 THEN 19
    WHEN CHARINDEX('Boulders', descriptiveterm) > 0 OR CHARINDEX('Boulders (Scattered)', descriptiveterm) > 0 THEN 20
    WHEN CHARINDEX('Rock', descriptiveterm) > 0 OR CHARINDEX('Rock (Scattered)', descriptiveterm) > 0 THEN 21
	WHEN CHARINDEX('Scree', descriptiveterm) > 0 THEN 22
	WHEN CHARINDEX('Rough Grassland', descriptiveterm) > 0 THEN 23
	WHEN CHARINDEX('Heath', descriptiveterm) > 0 THEN 24
	WHEN CHARINDEX('Marsh Reeds Or Saltmarsh', descriptiveterm) > 0 OR CHARINDEX('Saltmarsh', descriptiveterm) > 0 THEN 25
    WHEN CHARINDEX('Sand', descriptiveterm) > 0 THEN 26
    WHEN CHARINDEX('Mud', descriptiveterm) > 0 THEN 27
    WHEN CHARINDEX('Shingle', descriptiveterm) > 0 THEN 28
    WHEN CHARINDEX('Marsh', descriptiveterm) > 0 THEN 29
    WHEN CHARINDEX('Reeds', descriptiveterm) > 0 THEN 30
    WHEN CHARINDEX('Foreshore', descriptiveterm) > 0 THEN 31
    WHEN descriptiveterm = 'Slope' THEN 32
	WHEN descriptiveterm = 'Cliff' THEN 33
    --Descriptive Group Rules
    WHEN CHARINDEX('Building', descriptivegroup) > 0 THEN 34
    WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND make = 'Natural' THEN 35
    WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND (make = 'Manmade' OR make = 'Unknown') THEN 36
    WHEN CHARINDEX('Road Or Track', descriptivegroup) > 0 AND make =  'Manmade' THEN 37
    WHEN CHARINDEX('Roadside', descriptivegroup) > 0 AND make = 'Natural' THEN 38
	WHEN CHARINDEX('Roadside', descriptivegroup) > 0 AND (make = 'Manmade' OR make = 'Unknown') THEN 39
    WHEN CHARINDEX('Inland Water', descriptivegroup) > 0 THEN 40
    WHEN CHARINDEX('Path', descriptivegroup) > 0 THEN 41
    WHEN CHARINDEX('Rail', descriptivegroup) > 0 AND (make = 'Manmade' OR make = 'Unknown') THEN 42
    WHEN CHARINDEX('Rail', descriptivegroup) > 0 AND make = 'Natural' THEN 43
    WHEN CHARINDEX('Structure', descriptivegroup) > 0 THEN 44
    WHEN descriptivegroup = 'Glasshouse' THEN 45
    WHEN CHARINDEX('Landform', descriptivegroup) > 0 AND make = 'Natural' THEN 46
    WHEN CHARINDEX('Tidal Water', descriptivegroup) > 0 THEN 47
    WHEN CHARINDEX('Landform', descriptivegroup) > 0 AND make = 'Manmade' THEN 48
    ELSE 99
End;