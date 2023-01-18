-- average price by region --
SELECT 
	r.region,
   ROUND(AVG(w.price),2) as 'Average price'
FROM wines w
LEFT JOIN regions r 
ON w.region_id=r.region_id
GROUP BY w.region_id;

-- average price by variety --
SELECT 
	v.variety,
   ROUND(AVG(w.price),2) as 'Average price'
FROM wines w
LEFT JOIN varieties v
ON w.variety_id=v.variety_id
GROUP BY w.variety_id;

-- average price by producer --
SELECT 
	p.producer,
   ROUND(AVG(w.price),2) as 'Average price'
FROM wines w
LEFT JOIN producers p
ON w.producer_id=p.producer_id
GROUP BY w.producer_id;

-- average price by ranking --
SELECT 
	r.ranking,
   ROUND(AVG(w.price),2) as 'Average price'
FROM wines w
LEFT JOIN ranking r
ON w.ranking_id=r.ranking_id
GROUP BY w.ranking_id;

-- average price by alcohol percentage --
SELECT 
	alcohol_percentage,
   ROUND(AVG(price),2) as 'Average price'
FROM wines 
GROUP BY alcohol_percentage;
