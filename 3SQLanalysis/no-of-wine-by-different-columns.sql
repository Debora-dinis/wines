-- no of wines by variety --
SELECT 
	v.variety,
    COUNT(w.variety_id) as 'no of wines'
FROM wines w
LEFT JOIN varieties v
ON w.variety_id=v.variety_id
GROUP BY w.variety_id
ORDER BY 2 DESC;

-- no of wines by region --
SELECT 
	r.region,
    COUNT(w.region_id) as 'no of wines'
FROM wines w
LEFT JOIN regions r
ON w.region_id=r.region_id
GROUP BY w.region_id
ORDER BY 2 DESC;

-- no of wines by producer --
SELECT 
	p.producer,
    COUNT(w.producer_id) as 'no of wines'
FROM wines w
LEFT JOIN producers p 
ON w.producer_id=p.producer_id
GROUP BY w.producer_id
ORDER BY 2 DESC;

-- no of wines by alcohol percentage --
SELECT 
	alcohol_percentage,
    COUNT(alcohol_percentage) as 'no of wines'
FROM wines 
GROUP BY alcohol_percentage
ORDER BY alcohol_percentage;

-- no of wines by ranking --
SELECT 
	r.ranking,
    COUNT(w.ranking_id) as 'no of wines'
FROM wines w
LEFT JOIN ranking r
ON w.ranking_id=r.ranking_id
GROUP BY w.ranking_id
ORDER BY w.ranking_id;