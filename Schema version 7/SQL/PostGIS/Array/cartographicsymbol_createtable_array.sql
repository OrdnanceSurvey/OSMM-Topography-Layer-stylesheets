CREATE TABLE osmm_topo.cartographicsymbol_style AS SELECT
s.*,
CASE
	WHEN featurecode = 10091 THEN 'Culvert Symbol'
	WHEN featurecode = 10082 THEN 'Direction Of Flow Symbol'
	WHEN featurecode = 10130 THEN 'Boundary Half Mereing Symbol'
	WHEN featurecode = 10066 OR featurecode = 10170 THEN 'Bench Mark Symbol'
	WHEN featurecode = 10165 THEN 'Railway Switch Symbol'
	WHEN featurecode = 10177 THEN 'Road Related Flow Symbol'
ELSE 'Unclassified'
END AS style_description,
CASE
	WHEN featurecode = 10091 THEN 1
	WHEN featurecode = 10082 THEN 2
	WHEN featurecode = 10130 THEN 3
	WHEN featurecode = 10066 OR featurecode = '10170' THEN 4
	WHEN featurecode = 10165 THEN 5
	WHEN featurecode = 10177 THEN 6
ELSE 99
END AS style_code
FROM osmm_topo.cartographicsymbol as s;