

SELECT
	count(*) AS total_users,
	MIN( followers ) as min_followers,
	MAX( followers ) as max_followers,
	ROUND(  AVG( followers ) ) as avg_followers,
	SUM(followers) / count(*) as avg_manual
FROM
	users;

-- Lo mismo pero convirtiendo el SUM a numeric para que nos salgan los decimales.
SELECT
	count(*) AS total_users,
	MIN( followers ) as min_followers,
	MAX( followers ) as max_followers,
	AVG(followers) as avg_followers_sin_redondear,
	ROUND(  AVG( followers ) ) as avg_followers,
	SUM(followers) / count(*) as avg_manual,
	
	-- para que salgan los decimales  y salga lo mismo que con AVG .
    SUM(followers)::numeric / count(*) as avg_manual_sin_redondear,
	ROUND(SUM(followers)::numeric / count(*)) as avg_manual3
                     --sum(followers) * 1.0 / count(*) // esta forma tambien es valida. 


FROM
	users;	



select first_name, last_name, followers 
from users
where followers = 4 or followers = 4999;


SELECT
	count(*),
	followers
FROM
	users
WHERE
	followers = 4
	OR followers = 4999
GROUP BY
	followers;

SELECT
	count(*),
	followers
FROM
	users
WHERE
	followers BETWEEN 4500 AND 4999
GROUP BY
	followers
ORDER BY
	followers DESC;


