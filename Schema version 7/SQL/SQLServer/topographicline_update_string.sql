UPDATE osmm_topo.topographicline SET style_description = 
CASE
	WHEN CHARINDEX('General Feature', descriptivegroup) > 0 AND descriptiveterm IS NULL AND physicalpresence = 'Obstructing' THEN 'Default Line'
	WHEN CHARINDEX('Building', descriptivegroup) > 0 AND descriptiveterm = 'Outline' AND make = 'Manmade' AND physicalpresence = 'Obstructing' THEN 'Building Outline Line'
	WHEN CHARINDEX('General Feature', descriptivegroup) > 0 AND descriptiveterm IS NULL AND physicalpresence = 'Edge / Limit' THEN 'Edge Line'
	WHEN CHARINDEX('Road Or Track', descriptivegroup) > 0 AND descriptiveterm = 'Public' AND make = 'Manmade' AND physicalpresence = 'Edge / Limit' THEN 'Road Or Track Line'
	WHEN CHARINDEX('Building', descriptivegroup) > 0 AND descriptiveterm = 'Division' AND make = 'Manmade' AND physicalpresence = 'Obstructing' THEN 'Building Division Line'
	WHEN descriptiveterm = 'Polygon Closing Link' THEN 'Polygon Closing Line'
	WHEN CHARINDEX('Inland Water', descriptivegroup) > 0 AND descriptiveterm IS NULL AND physicalpresence = 'Edge / Limit' THEN 'Inland Water Line'
	WHEN descriptiveterm = 'Inferred Property Closing Link' THEN 'Property Closing Line'
	WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND descriptiveterm IS NULL AND make = 'Natural' AND physicalpresence = 'Edge / Limit' THEN 'General Surface Natural Line'
	WHEN CHARINDEX('Building', descriptivegroup) > 0 AND descriptiveterm = 'Outline' AND make = 'Manmade' AND physicalpresence = 'Overhead' THEN 'Building Overhead Line'
	WHEN descriptiveterm = 'Bottom Of Slope' THEN 'Bottom Of Slope Line'
	WHEN descriptiveterm = 'Top Of Slope' THEN 'Top Of Slope Line'
	WHEN descriptiveterm = 'Step' THEN 'Step Line'
	WHEN descriptiveterm = 'Unmade Path Alignment' THEN 'Path Line'
	WHEN descriptiveterm = 'Mean High Water (Springs)' THEN 'Mean High Water Line'
	WHEN descriptiveterm = 'Traffic Calming' THEN 'Traffic Calming Line'
	WHEN descriptiveterm = 'Standard Gauge Track' THEN 'Standard Gauge Track Line'
	WHEN descriptiveterm = 'Bottom Of Cliff' THEN 'Bottom Of Cliff Line'
	WHEN descriptiveterm = 'Top Of Cliff' THEN 'Top Of Cliff Line'
	WHEN descriptiveterm = 'Mean Low Water (Springs)' THEN 'Mean Low Water Line'
	WHEN descriptiveterm = 'Overhead Construction' THEN 'Overhead Construction Line'
	WHEN descriptiveterm = 'Culvert' THEN 'Culvert Line'
	WHEN descriptiveterm = 'Pylon' THEN 'Pylon Line'
	WHEN descriptivegroup = 'Landform' AND make = 'Natural' THEN 'Landform Natural Line'
	WHEN descriptiveterm = 'Ridge Or Rock Line' THEN 'Ridge Or Rock Line'	
	WHEN descriptivegroup = 'Historic Interest' THEN 'Historic Interest Line'
	WHEN descriptiveterm = 'Narrow Gauge' THEN 'Narrow Gauge Line'
	WHEN descriptiveterm = 'Buffer' THEN 'Railway Buffer Line'
	WHEN descriptiveterm = 'Tunnel Edge' THEN 'Tunnel Edge Line'
	WHEN descriptivegroup = 'Landform' AND make = 'Manmade' THEN 'Landform Manmade Line'	
	ELSE 'Unclassified' 
END,
style_code =
CASE
	WHEN CHARINDEX('General Feature', descriptivegroup) > 0 AND descriptiveterm IS NULL  AND physicalpresence = 'Obstructing' THEN 1
	WHEN CHARINDEX('Building', descriptivegroup) > 0 AND descriptiveterm = 'Outline' AND make = 'Manmade' AND physicalpresence = 'Obstructing' THEN 2
	WHEN CHARINDEX('General Feature', descriptivegroup) > 0 AND descriptiveterm IS NULL AND physicalpresence = 'Edge / Limit' THEN 3
	WHEN CHARINDEX('Road Or Track', descriptivegroup) > 0 AND descriptiveterm = 'Public' AND make = 'Manmade' AND physicalpresence = 'Edge / Limit' THEN 4
	WHEN CHARINDEX('Building', descriptivegroup) > 0 AND descriptiveterm = 'Division' AND make = 'Manmade' AND physicalpresence = 'Obstructing' THEN 5
	WHEN descriptiveterm = 'Polygon Closing Link' THEN 6
	WHEN CHARINDEX('Inland Water', descriptivegroup) > 0 AND descriptiveterm IS NULL AND physicalpresence = 'Edge / Limit' THEN 7
	WHEN descriptiveterm = 'Inferred Property Closing Link' THEN 8
	WHEN CHARINDEX('General Surface', descriptivegroup) > 0 AND descriptiveterm IS NULL AND make = 'Natural' AND physicalpresence = 'Edge / Limit' THEN 9
	WHEN CHARINDEX('Building', descriptivegroup) > 0 AND descriptiveterm = 'Outline' AND make = 'Manmade' AND physicalpresence = 'Overhead' THEN 10
	WHEN descriptiveterm = 'Bottom Of Slope' THEN 11
	WHEN descriptiveterm = 'Top Of Slope' THEN 12
	WHEN descriptiveterm = 'Step' THEN 13
	WHEN descriptiveterm = 'Unmade Path Alignment' THEN 14
	WHEN descriptiveterm = 'Mean High Water (Springs)' THEN 15
	WHEN descriptiveterm = 'Traffic Calming' THEN 16
	WHEN descriptiveterm = 'Standard Gauge Track' THEN 17
	WHEN descriptiveterm = 'Bottom Of Cliff' THEN 18
	WHEN descriptiveterm = 'Top Of Cliff' THEN 19
	WHEN descriptiveterm = 'Mean Low Water (Springs)' THEN 20
	WHEN descriptiveterm = 'Overhead Construction' THEN 21
	WHEN descriptiveterm = 'Culvert' THEN 22
	WHEN descriptiveterm = 'Pylon' THEN 23
	WHEN descriptivegroup = 'Landform' AND make = 'Natural' THEN 24
	WHEN descriptiveterm = 'Ridge Or Rock Line' THEN 25	
	WHEN descriptivegroup = 'Historic Interest' THEN 26
	WHEN descriptiveterm = 'Narrow Gauge' THEN 27
	WHEN descriptiveterm = 'Buffer' THEN 28
	WHEN descriptiveterm = 'Tunnel Edge' THEN 29
	WHEN descriptivegroup = 'Landform' AND make = 'Manmade' THEN 30
	ELSE 99
END;