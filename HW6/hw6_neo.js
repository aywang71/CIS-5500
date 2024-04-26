//password: v9Cg4VLD2wpGu8LsRjtjqNneIddGzOf7ydjMlH6W-AA

// Question 7
var answer_7 = `MATCH (c:City)-[:HAS_FLIGHT]->(f:Flight)-[:FLYING_TO]->(s:City {country:"Singapore"}) WHERE c.country IN ['India', 'Australia'] return f.code AS code, c.name AS source, f.duration AS duration  order by f.duration asc limit 3;`

// Question 8
var answer_8 = `MATCH p=(c:City)-[:HAS_FLIGHT]->(n:Flight {carrier: "United"})-[:FLYING_TO]->(s:City) WHERE n.duration < 240 RETURN p;`

// Question 9
var answer_9 = `MATCH (c:City)-[:HAS_FLIGHT]->(n:Flight)-[:FLYING_TO]->(f:City) WITH c, COUNT(n) AS flightCount, COLLECT(distinct f.name) AS destinations WHERE flightCount < 5 return destinations, flightCount, c.name AS sources;`

// Question 10
var answer_10 = `MATCH p=(c:City {name: "Rome"})-[:HAS_FLIGHT]->(n:Flight)-[:FLYING_TO]->(f:City)-[:HAS_FLIGHT]->(m:Flight)-[:FLYING_TO]->(g:City) WITH f.name AS intermediate_city, g.name AS destination, n.duration AS first_duration, m.duration AS second_duration WHERE first_duration < 150 AND second_duration < 180 AND NOT destination = "Rome" return distinct intermediate_city, destination, first_duration, second_duration;`

// Question 11
var answer_11 = `MATCH p=(c:City {country: "United States of America"})-[:HAS_FLIGHT]->(n:Flight)-[:FLYING_TO]->(f:City) WHERE NOT f.country = "United States of America" AND n.departure >= 480 AND n.arrival <= 1020 return p;` //Not sure about some arrival/depature times

// Question 12
var answer_12 = `MATCH p=(c:City {name: "New York"})-[:HAS_FLIGHT]->(n:Flight)-[:FLYING_TO]->(f:City)-[:HAS_FLIGHT]->(m:Flight)-[:FLYING_TO]->(g:City) WHERE g.name IN ["Athens","Madrid"] OR f.name IN ["London","Athens","Madrid"] return p;` //IN PROGRESS - cannot get count correct

// DO NOT MODIFY BELOW THIS LINE
module.exports =  { answer_7, answer_8, answer_9, answer_10, answer_11, answer_12 }
