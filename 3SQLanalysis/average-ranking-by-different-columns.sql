-- average alcohol percentage by region --
SELECT 
	r.region,
   ROUND(AVG(w.alcohol_percentage),2) as 'Average alcohol %'
FROM wines w
LEFT JOIN regions r
ON w.region_id=r.region_id
GROUP BY w.region_id;

-- average alcohol percentage by variety --
SELECT 
	v.variety,
   ROUND(AVG(w.alcohol_percentage),2) as 'Average alcohol %'
FROM wines w
LEFT JOIN varieties v
ON w.variety_id=v.variety_id
GROUP BY w.variety_id;

-- average alcohol percentage by ranking --
SELECT 
	r.ranking,
   ROUND(AVG(w.alcohol_percentage),2) as 'Average alcohol %'
FROM wines w
LEFT JOIN ranking r
ON w.ranking_id=r.ranking_id
GROUP BY w.ranking_id;

-- average ranking by region --
SELECT 
	rg.region,
   ROUND(AVG(w.ranking_id)) as 'average ranking'
FROM wines w
LEFT JOIN regions rg
ON w.region_id=rg.region_id
GROUP BY w.region_id;

-- average ranking by variety --
SELECT 
	v.variety,
   ROUND(AVG(w.ranking_id)) as 'average ranking'
FROM wines w
LEFT JOIN varieties v
ON w.variety_id=v.variety_id
GROUP BY w.variety_id;

-- average ranking by producer --
SELECT 
	rg.region,
   ROUND(AVG(w.ranking_id)) as 'average ranking'
FROM wines w
LEFT JOIN regions rg
ON w.region_id=rg.region_id
GROUP BY w.region_id;

-- average ranking by alcohol percentage --
SELECT 
	alcohol_percentage,
   ROUND(AVG(ranking_id)) as 'average ranking'
FROM wines 
GROUP BY alcohol_percentage;
