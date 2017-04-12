UPDATE osmm_topo.topographicline SET style_description = 
CASE
	--Descriptive Term Rules
	WHEN descriptiveterm = 'Polygon Closing Link' THEN 'Polygon Closing Line'
	WHEN descriptiveterm = 'Inferred Property Closing Link' THEN 'Property Closing Line'
	WHEN descriptiveterm = 'Bottom Of Slope' THEN 'Bottom Of Slope Line'
	WHEN descriptiveterm = 'Top Of Slope' THEN 'Top Of Slope Line'
	WHEN descriptiveterm = 'Step' THEN 'Step Line'
	WHEN INSTR(descriptiveterm, 'Mean High Water (Springs)') >0  THEN 'Mean High Water Line'
	WHEN descriptiveterm = 'Traffic Calming' THEN 'Traffic Calming Line'
	WHEN descriptiveterm = 'Standard Gauge Track' THEN 'Standard Gauge Track Line'
	WHEN descriptiveterm = 'Bottom Of Cliff' THEN 'Bottom Of Cliff Line'
	WHEN descriptiveterm = 'Top Of Cliff' THEN 'Top Of Cliff Line'
	WHEN descriptiveterm = 'Mean Low Water (Springs)' THEN 'Mean Low Water Line'
	WHEN descriptiveterm = 'Unmade Path Alignment' THEN 'Path Line'
	WHEN INSTR(descriptiveterm, 'Overhead Construction') >0  THEN 'Overhead Construction Line'
	WHEN descriptiveterm = 'Culvert' THEN 'Culvert Line'
	WHEN descriptiveterm = 'Pylon' THEN 'Pylon Line'
	WHEN descriptiveterm = 'Ridge Or Rock Line' THEN 'Ridge Or Rock Line'	
	WHEN descriptiveterm = 'Narrow Gauge' THEN 'Narrow Gauge Line'
	WHEN descriptiveterm = 'Buffer' THEN 'Railway Buffer Line'
	WHEN descriptiveterm = 'Tunnel Edge' THEN 'Tunnel Edge Line'
	WHEN INSTR(descriptiveterm, 'Line Of Posts' ) >0 THEN 'Line Of Posts Line' --NEW
	WHEN descriptiveterm = 'Drain' THEN 'Drain Line' --NEW
	WHEN INSTR(descriptiveterm, 'Normal Tidal Limit') >0  THEN 'Normal Tidal Limit Line' --NEW
	--Descriptive Group Rules
	WHEN INSTR(descriptivegroup, 'General Feature') >0  AND physicalpresence <> 'Edge / Limit' THEN 'Default Line'
	WHEN INSTR(descriptivegroup, 'Building') >0 AND descriptiveterm = 'Outline' AND physicalpresence = 'Obstructing' THEN 'Building Outline Line'
	WHEN INSTR(descriptivegroup, 'General Feature') >0  AND physicalpresence = 'Edge / Limit' THEN 'Edge Line'
	WHEN INSTR(descriptivegroup, 'Road Or Track') >0  THEN 'Road Or Track Line'
	WHEN INSTR(descriptivegroup, 'Building') >0  AND descriptiveterm = 'Division' AND physicalpresence = 'Obstructing' THEN 'Building Division Line'
	WHEN INSTR(descriptivegroup, 'Inland Water') >0  THEN 'Inland Water Line'
	WHEN INSTR(descriptivegroup, 'General Surface') >0  AND make = 'Natural' THEN 'General Surface Natural Line'
	WHEN INSTR(descriptivegroup, 'Building') >0  AND descriptiveterm = 'Outline' AND physicalpresence = 'Overhead' THEN 'Building Overhead Line'
	WHEN descriptivegroup = 'Landform' AND make = 'Natural' THEN 'Landform Natural Line'
	WHEN descriptivegroup = 'Historic Interest' THEN 'Historic Interest Line'
	WHEN descriptivegroup = 'Landform' AND make = 'Manmade' THEN 'Landform Manmade Line'	
	ELSE 'Unclassified' 
END,
style_code =
CASE
	--Descriptive Term Rules
	WHEN descriptiveterm = 'Polygon Closing Link' THEN 1
	WHEN descriptiveterm = 'Inferred Property Closing Link' THEN 2
	WHEN descriptiveterm = 'Bottom Of Slope' THEN 3
	WHEN descriptiveterm = 'Top Of Slope' THEN 4
	WHEN descriptiveterm = 'Step' THEN 5
	WHEN INSTR(descriptiveterm, 'Mean High Water (Springs)') >0  THEN 6
	WHEN descriptiveterm = 'Traffic Calming' THEN 7
	WHEN descriptiveterm = 'Standard Gauge Track' THEN 8
	WHEN descriptiveterm = 'Bottom Of Cliff' THEN 9
	WHEN descriptiveterm = 'Top Of Cliff' THEN 10
	WHEN descriptiveterm = 'Mean Low Water (Springs)' THEN 11
	WHEN descriptiveterm = 'Unmade Path Alignment' THEN 12
	WHEN INSTR(descriptiveterm, 'Overhead Construction') >0  THEN 13
	WHEN descriptiveterm = 'Culvert' THEN 14
	WHEN descriptiveterm = 'Pylon' THEN 15
	WHEN descriptiveterm = 'Ridge Or Rock Line' THEN 16	
	WHEN descriptiveterm = 'Narrow Gauge' THEN 17
	WHEN descriptiveterm = 'Buffer' THEN 18
	WHEN descriptiveterm = 'Tunnel Edge' THEN 19
	WHEN INSTR(descriptiveterm, 'Line Of Posts') >0  THEN 20 --NEW
	WHEN descriptiveterm = 'Drain' THEN 21 --NEW
	WHEN INSTR(descriptiveterm, 'Normal Tidal Limit') >0  THEN 22 --NEW
	--Descriptive Group Rules
	WHEN INSTR(descriptivegroup, 'General Feature') >0  AND physicalpresence <> 'Edge / Limit' THEN 23
	WHEN INSTR(descriptivegroup, 'Building') >0  AND descriptiveterm = 'Outline' AND physicalpresence = 'Obstructing' THEN 24
	WHEN INSTR(descriptivegroup, 'General Feature') >0  AND physicalpresence = 'Edge / Limit' THEN 25
	WHEN INSTR(descriptivegroup, 'Road Or Track') >0  THEN 26
	WHEN INSTR(descriptivegroup, 'Building') >0  AND descriptiveterm = 'Division' AND physicalpresence = 'Obstructing' THEN 27
	WHEN INSTR(descriptivegroup, 'Inland Water') >0  THEN 28
	WHEN INSTR(descriptivegroup, 'General Surface') >0  AND make = 'Natural' THEN 29
	WHEN INSTR(descriptivegroup, 'Building') >0  AND descriptiveterm = 'Outline' AND physicalpresence = 'Overhead' THEN 30
	WHEN descriptivegroup = 'Landform' AND make = 'Natural' THEN 31
	WHEN descriptivegroup = 'Historic Interest' THEN 32
	WHEN descriptivegroup = 'Landform' AND make = 'Manmade' THEN 33	
	ELSE 99 
END;