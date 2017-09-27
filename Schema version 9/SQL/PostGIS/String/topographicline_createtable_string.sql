CREATE TABLE osmm_topo.topographicline_style AS SELECT
l.*,
CASE
	--Descriptive Term Rules
	WHEN descriptiveterm = 'Polygon Closing Link' THEN 'Polygon Closing Line'
	WHEN descriptiveterm = 'Inferred Property Closing Link' THEN 'Property Closing Line'
	WHEN descriptiveterm = 'Bottom Of Slope' THEN 'Bottom Of Slope Line'
	WHEN descriptiveterm = 'Top Of Slope' THEN 'Top Of Slope Line'
	WHEN descriptiveterm = 'Step' THEN 'Step Line'
	WHEN descriptiveterm ~ 'Mean High Water (Springs)' THEN 'Mean High Water Line'
	WHEN descriptiveterm = 'Traffic Calming' THEN 'Traffic Calming Line'
	WHEN descriptiveterm = 'Standard Gauge Track' THEN 'Standard Gauge Track Line'
	WHEN descriptiveterm = 'Bottom Of Cliff' THEN 'Bottom Of Cliff Line'
	WHEN descriptiveterm = 'Top Of Cliff' THEN 'Top Of Cliff Line'
	WHEN descriptiveterm = 'Mean Low Water (Springs)' THEN 'Mean Low Water Line'
	WHEN descriptiveterm = 'Unmade Path Alignment' THEN 'Path Line'
	WHEN descriptiveterm ~ 'Overhead Construction' THEN 'Overhead Construction Line'
	WHEN descriptiveterm = 'Culvert' THEN 'Culvert Line'
	WHEN descriptiveterm = 'Pylon' THEN 'Pylon Line'
	WHEN descriptiveterm = 'Ridge Or Rock Line' THEN 'Ridge Or Rock Line'	
	WHEN descriptiveterm = 'Narrow Gauge' THEN 'Narrow Gauge Line'
	WHEN descriptiveterm = 'Buffer' THEN 'Railway Buffer Line'
	WHEN descriptiveterm = 'Tunnel Edge' THEN 'Tunnel Edge Line'
	WHEN descriptiveterm ~ 'Line Of Posts' THEN 'Line Of Posts Line' --NEW
	WHEN descriptiveterm = 'Drain' THEN 'Drain Line' --NEW
	WHEN descriptiveterm ~ 'Normal Tidal Limit' THEN 'Normal Tidal Limit Line' --NEW
	--Descriptive Group Rules
	WHEN descriptivegroup ~ 'General Feature' AND physicalpresence <> 'Edge / Limit' THEN 'Default Line'
	WHEN descriptivegroup ~ 'Building' AND descriptiveterm = 'Outline' AND physicalpresence = 'Obstructing' THEN 'Building Outline Line'
	WHEN descriptivegroup ~ 'General Feature' AND physicalpresence = 'Edge / Limit' THEN 'Edge Line'
	WHEN descriptivegroup ~ 'Road Or Track' THEN 'Road Or Track Line'
	WHEN descriptivegroup ~ 'Building' AND descriptiveterm = 'Division' AND physicalpresence = 'Obstructing' THEN 'Building Division Line'
	WHEN descriptivegroup ~ 'Inland Water' THEN 'Inland Water Line'
	WHEN descriptivegroup ~ 'General Surface' AND make = 'Natural' THEN 'General Surface Natural Line'
	WHEN descriptivegroup ~ 'Building' AND descriptiveterm = 'Outline' AND physicalpresence = 'Overhead' THEN 'Building Overhead Line'
	WHEN descriptivegroup = 'Landform' AND make = 'Natural' THEN 'Landform Natural Line'
	WHEN descriptivegroup = 'Historic Interest' THEN 'Historic Interest Line'
	WHEN descriptivegroup = 'Landform' AND make = 'Manmade' THEN 'Landform Manmade Line'	
	ELSE 'Unclassified' 
	END AS style_description,
CASE
	--Descriptive Term Rules
	WHEN descriptiveterm = 'Polygon Closing Link' THEN 1
	WHEN descriptiveterm = 'Inferred Property Closing Link' THEN 2
	WHEN descriptiveterm = 'Bottom Of Slope' THEN 3
	WHEN descriptiveterm = 'Top Of Slope' THEN 4
	WHEN descriptiveterm = 'Step' THEN 5
	WHEN descriptiveterm ~ 'Mean High Water (Springs)' THEN 6
	WHEN descriptiveterm = 'Traffic Calming' THEN 7
	WHEN descriptiveterm = 'Standard Gauge Track' THEN 8
	WHEN descriptiveterm = 'Bottom Of Cliff' THEN 9
	WHEN descriptiveterm = 'Top Of Cliff' THEN 10
	WHEN descriptiveterm = 'Mean Low Water (Springs)' THEN 11
	WHEN descriptiveterm = 'Unmade Path Alignment' THEN 12
	WHEN descriptiveterm ~ 'Overhead Construction' THEN 13
	WHEN descriptiveterm = 'Culvert' THEN 14
	WHEN descriptiveterm = 'Pylon' THEN 15
	WHEN descriptiveterm = 'Ridge Or Rock Line' THEN 16	
	WHEN descriptiveterm = 'Narrow Gauge' THEN 17
	WHEN descriptiveterm = 'Buffer' THEN 18
	WHEN descriptiveterm = 'Tunnel Edge' THEN 19
	WHEN descriptiveterm ~ 'Line Of Posts' THEN 20 --NEW
	WHEN descriptiveterm = 'Drain' THEN 21 --NEW
	WHEN descriptiveterm ~ 'Normal Tidal Limit' THEN 22 --NEW
	--Descriptive Group Rules
	WHEN descriptivegroup ~ 'General Feature' AND physicalpresence <> 'Edge / Limit' THEN 23
	WHEN descriptivegroup ~ 'Building' AND descriptiveterm = 'Outline' AND physicalpresence = 'Obstructing' THEN 24
	WHEN descriptivegroup ~ 'General Feature' AND physicalpresence = 'Edge / Limit' THEN 25
	WHEN descriptivegroup ~ 'Road Or Track' THEN 26
	WHEN descriptivegroup ~ 'Building' AND descriptiveterm = 'Division' AND physicalpresence = 'Obstructing' THEN 27
	WHEN descriptivegroup ~ 'Inland Water' THEN 28
	WHEN descriptivegroup ~ 'General Surface' AND make = 'Natural' THEN 29
	WHEN descriptivegroup ~ 'Building' AND descriptiveterm = 'Outline' AND physicalpresence = 'Overhead' THEN 30
	WHEN descriptivegroup = 'Landform' AND make = 'Natural' THEN 31
	WHEN descriptivegroup = 'Historic Interest' THEN 32
	WHEN descriptivegroup = 'Landform' AND make = 'Manmade' THEN 33	
	ELSE 99 
	END AS style_code
FROM osmm_topo.topographicline as l;