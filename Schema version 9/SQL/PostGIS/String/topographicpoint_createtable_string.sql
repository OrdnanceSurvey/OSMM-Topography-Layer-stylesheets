CREATE TABLE osmm_topo.topographicpoint_style AS SELECT
p.*,
CASE
	WHEN descriptiveterm = 'Spot Height' THEN 'Spot Height Point'
	WHEN descriptiveterm = 'Emergency Telephone' THEN 'Emergency Telephone Point'
	WHEN descriptiveterm ~ 'Site Of Heritage' THEN 'Site Of Heritage Point'
	WHEN descriptiveterm ~ 'Culvert' THEN 'Culvert Point'
	WHEN descriptiveterm = 'Positioned Nonconiferous Tree' THEN 'Positioned Nonconiferous Tree Point'
	WHEN descriptivegroup ~ 'Inland Water' THEN 'Inland Water Point'
	WHEN descriptivegroup ~ 'Roadside' THEN 'Roadside Point'
	WHEN descriptiveterm ~ 'Overhead Construction' THEN 'Overhead Construction Point'
	WHEN descriptivegroup ~ 'Rail' THEN 'Rail Point'
	WHEN descriptiveterm = 'Positioned Coniferous Tree' THEN 'Positioned Coniferous Tree Point'
	WHEN descriptiveterm = 'Boundary Post Or Stone' THEN 'Boundary Post Point'
	WHEN descriptiveterm = 'Triangulation Point Or Pillar' THEN 'Triangulation Point Or Pillar Point'
	WHEN descriptivegroup = 'Historic Interest' THEN 'Historic Point'
	WHEN (descriptivegroup = 'Landform' OR descriptiveterm = 'Positioned Boulder') THEN 'Landform Point'
	WHEN descriptivegroup ~ 'Tidal Water' THEN 'Tidal Water Point'
	WHEN descriptivegroup ~ 'Structure' THEN 'Structure Point'

	--The following do not exist in the sample data, so cannot complete the rules
	--WHEN featurecode = 10051 THEN 'Positioned Boulder Point'
	--WHEN featurecode = 10100 THEN 'Disused Feature Point'
	--WHEN featurecode = 10159 AND descriptiveterm = 'Switch' THEN 'Rail Switch Point'
	--WHEN (featurecode = 10120 OR featurecode = 10176 OR featurecode = 10159) THEN 'Inland Water Point'
ELSE 'Unclassified'
END AS style_description,
CASE
	WHEN descriptiveterm = 'Spot Height' THEN 1
	WHEN descriptiveterm = 'Emergency Telephone' THEN 2
	WHEN descriptiveterm ~ 'Site Of Heritage' THEN 3
	WHEN descriptiveterm ~ 'Culvert' THEN 4
	WHEN descriptiveterm = 'Positioned Nonconiferous Tree' THEN 5
	WHEN descriptivegroup ~ 'Inland Water' THEN 6
	WHEN descriptivegroup ~ 'Roadside' THEN 7
	WHEN descriptiveterm ~ 'Overhead Construction' THEN 8
	WHEN descriptivegroup ~ 'Rail' THEN 9
	WHEN descriptiveterm = 'Positioned Coniferous Tree' THEN 10
	WHEN descriptiveterm = 'Boundary Post Or Stone' THEN 11
	WHEN descriptiveterm = 'Triangulation Point Or Pillar' THEN 12
	WHEN descriptivegroup = 'Historic Interest' THEN 13
	WHEN (descriptivegroup = 'Landform' OR descriptiveterm = 'Positioned Boulder') THEN 14
	WHEN descriptivegroup ~ 'Tidal Water' THEN 15
	WHEN descriptivegroup ~ 'Structure' THEN 16
ELSE 99
END AS style_code
FROM osmm_topo.topographicpoint as p;
