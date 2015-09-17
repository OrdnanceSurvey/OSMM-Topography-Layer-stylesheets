UPDATE osmm_topo.topographicpoint SET style_description = 
CASE
	WHEN featurecode = 10197 THEN 'Spot Height Point'
	WHEN featurecode = 10085 THEN 'Culvert Point'
	WHEN (featurecode = 10048 OR featurecode = 10132 OR featurecode = 10080) AND descriptiveterm = 'Positioned Nonconiferous Tree' THEN 'Positioned Nonconiferous Tree Point'
	WHEN featurecode = 10088 THEN 'Inland Water Point'
	WHEN featurecode = 10186 AND descriptiveterm IS NULL THEN 'Structure Point'
	WHEN featurecode = 10179 THEN 'Roadside Point'
	WHEN featurecode = 10186 AND descriptiveterm = 'Overhead Construction' THEN 'Overhead Construction Point'
	WHEN featurecode = 10158 THEN 'Rail Point'
	WHEN featurecode = 10050 THEN 'Positioned Coniferous Tree Point'
	WHEN featurecode = 10094 THEN 'Landform Point'
	WHEN featurecode = 10080 AND descriptiveterm = 'Structure' THEN 'Historic Point'
	WHEN featurecode = 10129 THEN 'Boundary Post Point'
	WHEN featurecode = 10186 AND  descriptiveterm = 'Triangulation Point Or Pillar' THEN 'Triangulation Point Or Pillar Point'
	WHEN featurecode = 10191 THEN 'Structure Point'
	WHEN featurecode = 10072 THEN 'Site of Heritage'
	WHEN featurecode = 10051 THEN 'Positioned Boulder Point'
	WHEN featurecode = 10209 THEN 'Tidal Water Point'
	WHEN featurecode = 10100 THEN 'Disused Feature Point'
	WHEN featurecode = 10159 AND descriptiveterm = 'Switch' THEN 'Rail Switch Point'
	WHEN (featurecode = 10120 OR featurecode = 10176 OR featurecode = 10159) THEN 'Inland Water Point'
	ELSE 'Unclassified'
END,
style_code = 
CASE
	WHEN featurecode = 10197 THEN 1
	WHEN featurecode = 10085 THEN 2
	WHEN (featurecode = 10048 OR featurecode = 10132 OR featurecode = 10080) AND descriptiveterm = 'Positioned Nonconiferous Tree' THEN 3
	WHEN featurecode = 10088 THEN 4
	WHEN featurecode = 10186 AND descriptiveterm IS NULL THEN 5
	WHEN featurecode = 10179 THEN 6
	WHEN featurecode = 10186 AND descriptiveterm = 'Overhead Construction' THEN 7
	WHEN featurecode = 10158 THEN 8
	WHEN featurecode = 10050 THEN 9
	WHEN featurecode = 10094 THEN 10
	WHEN featurecode = 10080 AND descriptiveterm = 'Structure' THEN 11
	WHEN featurecode = 10129 THEN 12
	WHEN featurecode = 10186 AND  descriptiveterm = 'Triangulation Point Or Pillar' THEN 13
	WHEN featurecode = 10191 THEN 5
	WHEN featurecode = 10072 THEN 14
	WHEN featurecode = 10051 THEN 15
	WHEN featurecode = 10209 THEN 16
	WHEN featurecode = 10100 THEN 17
	WHEN featurecode = 10159 AND descriptiveterm = 'Switch' THEN 18
	WHEN (featurecode = 10120 OR featurecode = 10176 OR featurecode = 10159) THEN 4
	ELSE 99
END;
