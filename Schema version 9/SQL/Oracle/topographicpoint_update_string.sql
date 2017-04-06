UPDATE osmm_topo.topographicpoint SET style_description =
CASE
	WHEN descriptiveterm = 'Spot Height' THEN 'Spot Height Point'
	WHEN descriptiveterm = 'Emergency Telephone' THEN 'Emergency Telephone Point'
	WHEN INSTR(descriptiveterm, 'Site Of Heritage') >0  THEN 'Site Of Heritage Point'
	WHEN INSTR(descriptiveterm, 'Culvert') >0  THEN 'Culvert Point'
	WHEN descriptiveterm = 'Positioned Nonconiferous Tree' THEN 'Positioned Nonconiferous Tree Point'
	WHEN INSTR(descriptivegroup, 'Inland Water') >0  THEN 'Inland Water Point'
	WHEN INSTR(descriptivegroup, 'Roadside') >0  THEN 'Roadside Point'
	WHEN INSTR(descriptiveterm, 'Overhead Construction') >0  THEN 'Overhead Construction Point'
	WHEN INSTR(descriptivegroup, 'Rail') >0  THEN 'Rail Point'
	WHEN descriptiveterm = 'Positioned Coniferous Tree' THEN 'Positioned Coniferous Tree Point'
	WHEN descriptiveterm = 'Boundary Post Or Stone' THEN 'Boundary Post Point'
	WHEN descriptiveterm = 'Triangulation Point Or Pillar' THEN 'Triangulation Point Or Pillar Point'
	WHEN descriptivegroup = 'Historic Interest' THEN 'Historic Point'
	WHEN descriptivegroup = 'Landform' OR descriptiveterm = 'Positioned Boulder' THEN 'Landform Point'
	WHEN INSTR(descriptivegroup, 'Tidal Water') >0 THEN 'Tidal Water Point'
	WHEN INSTR(descriptivegroup, 'Structure') >0  THEN 'Structure Point'

	--The following do not exist in the sample data, so cannot complete the rules
	WHEN featurecode = 10051 THEN 'Positioned Boulder Point'
	WHEN featurecode = 10100 THEN 'Disused Feature Point'
	WHEN featurecode = 10159 AND descriptiveterm = '{Switch}' THEN 'Rail Switch Point'
	WHEN (featurecode = 10120 OR featurecode = 10176 OR featurecode = 10159) THEN 'Inland Water Point'
	ELSE 'Unclassified'
END,
style_code =
CASE
	WHEN descriptiveterm = 'Spot Height' THEN 1
	WHEN descriptiveterm = 'Emergency Telephone' THEN 2
	WHEN INSTR(descriptiveterm, 'Site Of Heritage') >0  THEN 3
	WHEN INSTR(descriptiveterm, 'Culvert') >0  THEN 4
	WHEN descriptiveterm = 'Positioned Nonconiferous Tree' THEN 5
	WHEN INSTR(descriptivegroup, 'Inland Water') >0  THEN 6
	WHEN INSTR(descriptivegroup, 'Roadside') >0  THEN 7
	WHEN INSTR(descriptiveterm, 'Overhead Construction') >0  THEN 8
	WHEN INSTR(descriptivegroup, 'Rail') >0  THEN 9
	WHEN descriptiveterm = 'Positioned Coniferous Tree' THEN 10
	WHEN descriptiveterm = 'Boundary Post Or Stone' THEN 11
	WHEN descriptiveterm = 'Triangulation Point Or Pillar' THEN 12
	WHEN descriptivegroup = 'Historic Interest' THEN 13
	WHEN (descriptivegroup = 'Landform' OR descriptiveterm = 'Positioned Boulder') THEN 14
	WHEN INSTR(descriptivegroup, 'Tidal Water') >0  THEN 15
	WHEN INSTR(descriptivegroup, 'Structure') >0  THEN 16
	ELSE 99
END;