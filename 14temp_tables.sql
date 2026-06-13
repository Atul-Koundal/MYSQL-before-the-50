## Tables that are nly visible to the *session* they are created insert

CREATE TEMPORARY TABLE temp_table
(
first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(100)
);


SELECT * 
FROM temp_table; 

INSERT INTO temp_table
VALUES('Atul','Koundal','Life is Beautiful');

SELECT * 
FROM temp_table;