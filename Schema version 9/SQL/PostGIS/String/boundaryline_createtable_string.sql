CREATE TABLE osmm_topo.boundaryline_style AS SELECT
b.*,
CASE	
	WHEN featurecode = 10136 THEN 'Parish Boundary'
	WHEN featurecode = 10131 THEN 'District Boundary'
	WHEN featurecode = 10128 THEN 'Electoral Boundary'
	WHEN featurecode = 10127 THEN 'County Boundary'
	WHEN featurecode = 10135 THEN 'Parliamentary Boundary'
	ELSE 'Unclassified' 
	END AS style_description,
CASE
	WHEN featurecode = 10136 THEN 1
	WHEN featurecode = 10131 THEN 2
	WHEN featurecode = 10128 THEN 3
	WHEN featurecode = 10127 THEN 4
	WHEN featurecode = 10135 THEN 5
	ELSE 99 
	END AS style_code
FROM osmm_topo.boundaryline as b;