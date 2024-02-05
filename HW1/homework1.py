"""
DO NOT MODIFY ANY VARIABLE NAMES. YOU MAY COMMENT YOUR CODE IF NEEDED.
"""

# You must fill in your Pennkey and your 8 digit Penn ID below:

pennkey = "aywang2"
penn_id = "87457877"


# ORACLE QUERIES

answer1 = """SELECT NAME
FROM MOVIE_CAST
WHERE NAME LIKE 'S%'
AND SUBSTR(NAME, -1, 1) IN ('a', 'e', 'i', 'o', 'u')
ORDER BY NAME"""

answer2 = """SELECT MOVIE_CAST.NAME
FROM CAST_IN
JOIN MOVIE
    ON CAST_IN.MOVIE_ID = MOVIE.MOVIE_ID
JOIN MOVIE_CAST
    ON CAST_IN.CAST_ID = MOVIE_CAST.ID
WHERE MOVIE.RUNTIME > 100
AND MOVIE.RELEASE_YEAR > 2017
AND MOVIE_CAST.GENDER = 1"""

answer3 = """SELECT NAME, COUNT(TITLE) AS num_movies
FROM CREW_IN
JOIN MOVIE
    ON CREW_IN.MOVIE_ID = MOVIE.MOVIE_ID
JOIN CREW
    ON CREW_IN.CREW_ID = CREW.ID
WHERE CREW_IN.JOB = 'Director'
AND MOVIE.NUM_RATINGS > 1000000
GROUP BY CREW.NAME"""

answer4 = """WITH nine AS (
    SELECT CREW_ID, MAX(RELEASE_YEAR) AS lastMovie
FROM CREW_IN
JOIN MOVIE
    ON CREW_IN.MOVIE_ID = MOVIE.MOVIE_ID
GROUP BY CREW_ID
),
    non AS (
        SELECT ID as CREW_ID
FROM CREW
WHERE CREW.ID NOT IN (SELECT CREW_ID FROM CREW_IN)
    ),
    fin AS (
        SELECT CREW_ID
FROM (SELECT CREW_ID FROM nine WHERE lastMovie <= 1950)
UNION
SELECT CREW_ID
FROM non
    )
SELECT COUNT(CREW_ID) as num
FROM fin"""

answer5 = """WITH inc AS (
    SELECT RELEASE_YEAR AS YEAR
    FROM MOVIE
    WHERE TITLE = 'Inception'
),
cs AS (
    SELECT MIN(RATING) as RATING
    FROM CREW
    JOIN CREW_IN
        ON CREW.ID = CREW_IN.CREW_ID
    JOIN MOVIE
        ON CREW_IN.MOVIE_ID = MOVIE.MOVIE_ID
    WHERE NAME = 'Christopher Nolan'
    AND JOB = 'Director'
    )
SELECT MOVIE.TITLE, MOVIE.RATING
FROM MOVIE, cs, inc
WHERE MOVIE.RATING > cs.RATING
AND MOVIE.RELEASE_YEAR = inc.YEAR"""


#TO FIX
answer6 = """WITH cd AS (
    SELECT MOVIE.MOVIE_ID, MOVIE_GENRE.GENRE_NAME, COUNT(*) AS NUM
    FROM CREW_IN
    JOIN MOVIE
        ON CREW_IN.MOVIE_ID = MOVIE.MOVIE_ID
    JOIN MOVIE_GENRE
        ON MOVIE.MOVIE_ID = MOVIE_GENRE.MOVIE_ID
    WHERE JOB = 'Costume Design'
    GROUP BY MOVIE.MOVIE_ID, MOVIE_GENRE.GENRE_NAME
    HAVING COUNT(*) > 3
)
SELECT cd.GENRE_NAME AS genre, LISTAGG(MOVIE.TITLE, '; ') WITHIN GROUP (ORDER BY MOVIE.TITLE) AS movies
FROM cd
JOIN MOVIE
    ON cd.MOVIE_ID = MOVIE.MOVIE_ID
GROUP BY cd.GENRE_NAME"""

answer7 = """WITH dir AS (
    SELECT CREW_ID, COUNT(*) AS num, AVG(MOVIE.RATING) AS avg_rating,
           CASE
                WHEN COUNT(*) > 5 THEN 'Experienced'
                WHEN COUNT(*) <= 5 THEN 'Novice'
            END AS exp_level
    FROM CREW_IN
    JOIN MOVIE
        ON CREW_IN.MOVIE_ID = MOVIE.MOVIE_ID
    WHERE job = 'Director'
    GROUP BY CREW_ID
    ORDER BY CREW_ID ASC
)
SELECT exp_level, ROUND(AVG(avg_rating), 2) AS avg_rating
FROM dir
GROUP BY exp_level
ORDER BY avg_rating DESC"""


# MYSQL QUERIES

# The database you set up on RDS - SPECIFICALLY FOR SUBMISSION

db_config = {
    "username" : "aywang2",
    "host": "database-1.czc4440y8vza.us-east-1.rds.amazonaws.com",
    "port": "3306",
    "password": "Warofthechosen2019"
}


# Fill in DDL statements in the order of execution. A deduction might be applied for an incorrect order.
# Create query for ___
answer8a = """CREATE TABLE Airlines (id int, name varchar(255), alias varchar(255), iata char(2), icao char(3), callsign varchar(255), country varchar(255), active char(1), PRIMARY KEY(id));"""
# Create query for ___
answer8b = """CREATE TABLE Airports (id int, name varchar(255), city varchar(255), country varchar(255), iata char(3), icao char(4), lat decimal(8,6), lon decimal(9,6), alt int, timezone decimal(3,1), dst char(1), tz varchar(255), PRIMARY KEY(id));"""
# Create query for ___
answer8c = """CREATE TABLE Routes (airline_iata char(3), airline_id int, src_iata_icao char(4), source_id int, target_iata_icao char(4), target_id int, code_share char(1), equipment char(20),
CHECK (code_share='Y' OR code_share=''),
PRIMARY KEY (airline_id, source_id, target_id),
FOREIGN KEY (airline_id) REFERENCES Airlines(id),
FOREIGN KEY (source_id) REFERENCES Airports(id),
FOREIGN KEY (target_id) REFERENCES  Airports(id)
);"""


answer9 = """WITH ir AS (
    SELECT airline_id, target_id
    FROM Routes
    JOIN Airports
        ON Routes.source_id = Airports.id
    WHERE Airports.country NOT IN ('United States', 'Canada')
), ir2 AS (
    SELECT airline_id, target_id
    FROM ir
    JOIN Airports
        ON ir.target_id = Airports.id
    WHERE Airports.country NOT IN ('United States', 'Canada')
), us AS (
    SELECT id, COUNT(*) AS num_routes
    FROM Airlines
    JOIN ir2
        ON Airlines.id = ir2.airline_id
    WHERE country = 'United States'
    GROUP BY id
)
SELECT name, num_routes
FROM us
JOIN Airlines
    ON us.id = Airlines.id
ORDER BY num_routes DESC
LIMIT 10"""

answer10 = """WITH ir AS(
    SELECT airline_id, source_id, city AS source_city, country AS source_country, target_id
    FROM Routes
    JOIN Airports
        ON Routes.source_id = Airports.id
), ir2 AS(
    SELECT airline_id, COUNT(DISTINCT city) as num_cities
    FROM ir
    JOIN Airports
        ON ir.target_id = Airports.id
    WHERE source_country != country
    GROUP BY airline_id
)
SELECT name AS airline_name, num_cities
FROM ir2
JOIN Airlines
    ON ir2.airline_id = Airlines.id
WHERE num_cities > 150
ORDER BY num_cities, name"""

answer11 = """WITH mx AS (
    SELECT id, city
    FROM Airports
    WHERE country = 'Mexico'
), num AS (
    SELECT COUNT(*) AS n
    FROM mx
), ar AS (
    SELECT id, city, target_id
    FROM mx
    JOIN Routes
        ON mx.id = Routes.source_id
), fin AS (
    SELECT city, num.n - 1 - COUNT(DISTINCT target_id) AS num_cities
    FROM ar, num
    GROUP BY city
)
SELECT *
FROM fin
ORDER BY num_cities ASC, city"""

answer12 = """ """

# Place your text response to answer 13 within the multi-line string below.
answer13 = """I did not use generative AI to assist me in the homework. I used GeeksForGeeks documentation and syntax pages to help me understand SQL statements though"""
