-- import csv wines --
LOAD DATA  INFILE  'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\winecsv.csv'
INTO TABLE wines
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n';

SELECT *
FROM wines
