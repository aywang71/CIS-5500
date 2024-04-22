CREATE (n0:City{name:"Mumbai", country:"India"}) 
CREATE (n1:City{name:"New York", country:"United States of America"}) 
CREATE (n2:City{name:"Chicago", country:"United States of America"}) 
CREATE (n3:City{name:"Las Vegas", country:"United States of America"}) 
CREATE (n4:City{name:"Los Angeles", country:"United States of America"}) 
CREATE (n5:City{name:"Toronto", country:"Canada"}) 
CREATE (n6:City{name:"London", country:"United Kingdom"}) 
CREATE (n7:City{name:"Madrid", country:"Spain"}) 
CREATE (n8:City{name:"Paris", country:"France"}) 
CREATE (n9:City{name:"Athens", country:"Greece"}) 
CREATE (n10:City{name:"Rome", country:"Italy"}) 
CREATE (n11:City{name:"Istanbul", country:"Turkey"}) 
CREATE (n12:City{name:"Singapore", country:"Singapore"}) 
CREATE (n13:City{name:"Sydney", country:"Australia"}) 
CREATE (n14:City{name:"Melbourne", country:"Australia"}) 

CREATE (flight0:Flight {code:"AA9", carrier:"American Airlines", duration:314, source_airport_code:"JFK", departure:1300, destination_airport_code:"LAX", arrival:114})
WITH flight0
MATCH (source0:City {name:"New York"}), (destination0:City {name:"Los Angeles"})
CREATE (source0)-[:HAS_FLIGHT]->(flight0)-[:FLYING_TO]->(destination0)
CREATE (flight1:Flight {code:"AA920", carrier:"American Airlines", duration:305, source_airport_code:"LAX", departure:505, destination_airport_code:"JFK", arrival:990})
WITH flight1
MATCH (source1:City {name:"Los Angeles"}), (destination1:City {name:"New York"})
CREATE (source1)-[:HAS_FLIGHT]->(flight1)-[:FLYING_TO]->(destination1)
CREATE (flight2:Flight {code:"UA1507", carrier:"United", duration:300, source_airport_code:"JFK", departure:720, destination_airport_code:"LAX", arrival:900})
WITH flight2
MATCH (source2:City {name:"New York"}), (destination2:City {name:"Los Angeles"})
CREATE (source2)-[:HAS_FLIGHT]->(flight2)-[:FLYING_TO]->(destination2)
CREATE (flight3:Flight {code:"UA1262", carrier:"United", duration:383, source_airport_code:"LAX", departure:1300, destination_airport_code:"JFK", arrival: 390})
WITH flight3
MATCH (source3:City {name:"Los Angeles"}), (destination3:City {name:"New York"})
CREATE (source3)-[:HAS_FLIGHT]->(flight3)-[:FLYING_TO]->(destination3)
CREATE (flight4:Flight {code:"AA8203", carrier:"American Airlines", duration:96, source_airport_code:"YYZ", departure: 1130, destination_airport_code:"EWR", arrival: 1226})
WITH flight4
MATCH (source4:City {name:"Toronto"}), (destination4:City {name:"New York"})
CREATE (source4)-[:HAS_FLIGHT]->(flight4)-[:FLYING_TO]->(destination4)
CREATE (flight5:Flight {code:"AA8227", carrier:"American Airlines", duration:95, source_airport_code:"EWR", departure: 1245, destination_airport_code:"YYZ", arrival:1340})
WITH flight5
MATCH (source5:City {name:"New York"}), (destination5:City {name:"Toronto"})
CREATE (source5)-[:HAS_FLIGHT]->(flight5)-[:FLYING_TO]->(destination5)
CREATE (flight6:Flight {code:"AC702", carrier:"Air Canada", duration:96, source_airport_code:"YYZ", departure: 1135, destination_airport_code:"JFK", arrival:1231})
WITH flight6
MATCH (source6:City {name:"Toronto"}), (destination6:City {name:"New York"})
CREATE (source6)-[:HAS_FLIGHT]->(flight6)-[:FLYING_TO]->(destination6)
CREATE (flight7:Flight {code:"AC701", carrier:"Air Canada", duration:95, source_airport_code:"JFK", departure:635, destination_airport_code:"YYZ", arrival: 745})
WITH flight7
MATCH (source7:City {name:"New York"}), (destination7:City {name:"Toronto"})
CREATE (source7)-[:HAS_FLIGHT]->(flight7)-[:FLYING_TO]->(destination7)
CREATE (flight8:Flight {code:"DL5950", carrier:"Delta", duration:183, source_airport_code:"ORD", departure: 420, destination_airport_code:"JFK", arrival: 635})
WITH flight8
MATCH (source8:City {name:"Chicago"}), (destination8:City {name:"New York"})
CREATE (source8)-[:HAS_FLIGHT]->(flight8)-[:FLYING_TO]->(destination8)
CREATE (flight9:Flight {code:"DL4304", carrier:"Delta", duration:93, source_airport_code:"JFK", departure: 1105, destination_airport_code:"ORD", arrival:655})
WITH flight9
MATCH (source9:City {name:"New York"}), (destination9:City {name:"Chicago"})
CREATE (source9)-[:HAS_FLIGHT]->(flight9)-[:FLYING_TO]->(destination9)
CREATE (flight10:Flight {code:"UA612", carrier:"United", duration:125, source_airport_code:"ORD", departure:780, destination_airport_code:"LGA", arrival:965})
WITH flight10
MATCH (source10:City {name:"Chicago"}), (destination10:City {name:"New York"})
CREATE (source10)-[:HAS_FLIGHT]->(flight10)-[:FLYING_TO]->(destination10)

CREATE (flight11:Flight {code:"UA124", carrier:"United", duration:150, source_airport_code:"LGA", departure:600, destination_airport_code:"ORD", arrival: 950})
WITH flight11
MATCH (source11:City {name:"New York"}), (destination11:City {name:"Chicago"})
CREATE (source11)-[:HAS_FLIGHT]->(flight11)-[:FLYING_TO]->(destination11)
CREATE (flight12:Flight {code:"DL2180", carrier:"Delta", duration:270, source_airport_code:"LAS", departure: 645, destination_airport_code:"EWR", arrival:790})
WITH flight12
MATCH (source12:City {name:"Las Vegas"}), (destination12:City {name:"New York"})
CREATE (source12)-[:HAS_FLIGHT]->(flight12)-[:FLYING_TO]->(destination12)
CREATE (flight13:Flight {code:"DL1423", carrier:"Delta", duration:340, source_airport_code:"EWR", departure:1132, destination_airport_code:"LAS", arrival: 655})
WITH flight13
MATCH (source13:City {name:"New York"}), (destination13:City {name:"Las Vegas"})
CREATE (source13)-[:HAS_FLIGHT]->(flight13)-[:FLYING_TO]->(destination13)
CREATE (flight14:Flight {code:"UA1576", carrier:"United", duration:280, source_airport_code:"LAS", departure: 595, destination_airport_code:"EWR", arrival:1065})
WITH flight14
MATCH (source14:City {name:"Las Vegas"}), (destination14:City {name:"New York"})
CREATE (source14)-[:HAS_FLIGHT]->(flight14)-[:FLYING_TO]->(destination14)
CREATE (flight15:Flight {code:"UA1182", carrier:"United", duration:270, source_airport_code:"EWR", departure:470, destination_airport_code:"LAS", arrival:985})
WITH flight15
MATCH (source15:City {name:"New York"}), (destination15:City {name:"Las Vegas"})
CREATE (source15)-[:HAS_FLIGHT]->(flight15)-[:FLYING_TO]->(destination15)
CREATE (flight16:Flight {code:"AA6144", carrier:"American Airlines", duration:525, source_airport_code:"LHR", departure:1085, destination_airport_code:"JFK", arrival:1255})
WITH flight16
MATCH (source16:City {name:"London"}), (destination16:City {name:"New York"})
CREATE (source16)-[:HAS_FLIGHT]->(flight16)-[:FLYING_TO]->(destination16)
CREATE (flight17:Flight {code:"AA6153", carrier:"American Airlines", duration:360, source_airport_code:"JFK", departure:1350,  destination_airport_code:"LHR", arrival:630})
WITH flight17
MATCH (source17:City {name:"New York"}), (destination17:City {name:"London"})
CREATE (source17)-[:HAS_FLIGHT]->(flight17)-[:FLYING_TO]->(destination17)
CREATE (flight18:Flight {code:"VS9", carrier:"Virgin Atlantic", duration:535, source_airport_code:"LHR", departure:965, destination_airport_code:"JFK", arrival:1130})
WITH flight18
MATCH (source18:City {name:"London"}), (destination18:City {name:"New York"})
CREATE (source18)-[:HAS_FLIGHT]->(flight18)-[:FLYING_TO]->(destination18)
CREATE (flight19:Flight {code:"VS8", carrier:"Virgin Atlantic", duration:720, source_airport_code:"JFK", departure:1140, destination_airport_code:"LHR", arrival:440})
WITH flight19
MATCH (source19:City {name:"New York"}), (destination19:City {name:"London"})
CREATE (source19)-[:HAS_FLIGHT]->(flight19)-[:FLYING_TO]->(destination19)
CREATE (flight20:Flight {code:"DL1022", carrier:"Delta", duration:540, source_airport_code:"CDG", departure:500, destination_airport_code:"JFK", arrival:625})
WITH flight20
MATCH (source20:City {name:"Paris"}), (destination20:City {name:"New York"})
CREATE (source20)-[:HAS_FLIGHT]->(flight20)-[:FLYING_TO]->(destination20)

CREATE (flight21:Flight {code:"AA6154", carrier:"Delta", duration:360, source_airport_code:"JFK", departure:1410, destination_airport_code:"CDG", arrival:755})
WITH flight21
MATCH (source21:City {name:"New York"}), (destination21:City {name:"Paris"})
CREATE (source21)-[:HAS_FLIGHT]->(flight21)-[:FLYING_TO]->(destination21)
CREATE (flight22:Flight {code:"AF10", carrier:"Air France", duration:540, source_airport_code:"CDG", departure:1015, destination_airport_code:"JFK", arrival:1140})
WITH flight22
MATCH (source22:City {name:"Paris"}), (destination22:City {name:"New York"})
CREATE (source22)-[:HAS_FLIGHT]->(flight22)-[:FLYING_TO]->(destination22)
CREATE (flight23:Flight {code:"AF9", carrier:"Air France", duration:360, source_airport_code:"JFK", departure:1410, destination_airport_code:"CDG", arrival:755})
WITH flight23
MATCH (source23:City {name:"New York"}), (destination23:City {name:"Paris"})
CREATE (source23)-[:HAS_FLIGHT]->(flight23)-[:FLYING_TO]->(destination23)
CREATE (flight24:Flight {code:"AZ602", carrier:"Alitalia", duration:640, source_airport_code:"FCO", departure:580, destination_airport_code:"JFK", arrival:825})
WITH flight24
MATCH (source24:City {name:"Rome"}), (destination24:City {name:"New York"})
CREATE (source24)-[:HAS_FLIGHT]->(flight24)-[:FLYING_TO]->(destination24)
CREATE (flight25:Flight {code:"AZ611", carrier:"Alitalia", duration:445, source_airport_code:"JFK", departure:1335, destination_airport_code:"FCO", arrival:760})
WITH flight25
MATCH (source25:City {name:"New York"}), (destination25:City {name:"Rome"})
CREATE (source25)-[:HAS_FLIGHT]->(flight25)-[:FLYING_TO]->(destination25)
CREATE (flight26:Flight {code:"DL1023", carrier:"Delta", duration:640, source_airport_code:"FCO", departure:580, destination_airport_code:"JFK", arrival:805})
WITH flight26
MATCH (source26:City {name:"Rome"}), (destination26:City {name:"New York"})
CREATE (source26)-[:HAS_FLIGHT]->(flight26)-[:FLYING_TO]->(destination26)
CREATE (flight27:Flight {code:"DL1040", carrier:"Delta", duration:360, source_airport_code:"JFK", departure:970, destination_airport_code:"FCO", arrival:405})
WITH flight27
MATCH (source27:City {name:"New York"}), (destination27:City {name:"Rome"})
CREATE (source27)-[:HAS_FLIGHT]->(flight27)-[:FLYING_TO]->(destination27)
CREATE (flight28:Flight {code:"AI191", carrier:"Air India", duration:950, source_airport_code:"BOM", departure:90, destination_airport_code:"EWR", arrival:475})
WITH flight28
MATCH (source28:City {name:"Mumbai"}), (destination28:City {name:"New York"})
CREATE (source28)-[:HAS_FLIGHT]->(flight28)-[:FLYING_TO]->(destination28)
CREATE (flight29:Flight {code:"AI140", carrier:"Air India", duration:890, source_airport_code:"EWR", departure:985, destination_airport_code:"BOM", arrival:1000})
WITH flight29
MATCH (source29:City {name:"New York"}), (destination29:City {name:"Mumbai"})
CREATE (source29)-[:HAS_FLIGHT]->(flight29)-[:FLYING_TO]->(destination29)
CREATE (flight30:Flight {code:"UA49", carrier:"United", duration:950, source_airport_code:"BOM", departure:1400, destination_airport_code:"EWR", arrival:340})
WITH flight30
MATCH (source30:City {name:"Mumbai"}), (destination30:City {name:"New York"})
CREATE (source30)-[:HAS_FLIGHT]->(flight30)-[:FLYING_TO]->(destination30)

CREATE (flight31:Flight {code:"UA48", carrier:"United", duration:880, source_airport_code:"EWR", departure:1225, destination_airport_code:"BOM", arrival: 1250})
WITH flight31
MATCH (source31:City {name:"New York"}), (destination31:City {name:"Mumbai"})
CREATE (source31)-[:HAS_FLIGHT]->(flight31)-[:FLYING_TO]->(destination31)
CREATE (flight32:Flight {code:"AA1554", carrier:"American Airlines", duration:75, source_airport_code:"LAS", departure:1280,destination_airport_code:"LAX", arrival:1350})
WITH flight32
MATCH (source32:City{name:"Las Vegas"}), (destination32:City{name:"Los Angeles"})
CREATE (source32)-[:HAS_FLIGHT]->(flight32)-[:FLYING_TO]->(destination32)
CREATE (flight33:Flight {code:"AA2303", carrier:"American Airlines", duration:80, source_airport_code:"LAX", departure:1355, destination_airport_code:"LAS", arrival:1430})
WITH flight33
MATCH (source33:City {name:"Los Angeles"}), (destination33:City {name:"Las Vegas"})
CREATE (source33)-[:HAS_FLIGHT]->(flight33)-[:FLYING_TO]->(destination33)
CREATE (flight34:Flight {code:"DL1761", carrier:"Delta", duration:75, source_airport_code:"LAS", departure:1020, destination_airport_code:"LAX", arrival:1095})
WITH flight34
MATCH (source34:City {name:"Las Vegas"}), (destination34:City {name:"Los Angeles"})
CREATE (source34)-[:HAS_FLIGHT]->(flight34)-[:FLYING_TO]->(destination34)
CREATE (flight35:Flight {code:"DL1762", carrier:"Delta", duration:60, source_airport_code:"LAX", departure:435, destination_airport_code:"LAS", arrival:495})
WITH flight35
MATCH (source35:City {name:"Los Angeles"}), (destination35:City {name:"Las Vegas"})
CREATE (source35)-[:HAS_FLIGHT]->(flight35)-[:FLYING_TO]->(destination35)
CREATE (flight36:Flight {code:"AA7417", carrier:"American Airlines", duration:910, source_airport_code:"MEL", departure:1020,  destination_airport_code:"LAX", arrival:850})
WITH flight36
MATCH (source36:City {name:"Melbourne"}), (destination36:City {name:"Los Angeles"})
CREATE (source36)-[:HAS_FLIGHT]->(flight36)-[:FLYING_TO]->(destination36)
CREATE (flight37:Flight {code:"AA7356", carrier:"American Airlines", duration:945, source_airport_code:"LAX", departure:1370, destination_airport_code:"MEL", arrival:515})
WITH flight37
MATCH (source37:City {name:"Los Angeles"}), (destination37:City {name:"Melbourne"})
CREATE (source37)-[:HAS_FLIGHT]->(flight37)-[:FLYING_TO]->(destination37)
CREATE (flight38:Flight {code:"QF94", carrier:"Quantas", duration:910, source_airport_code:"MEL", departure:1020, destination_airport_code:"LAX", arrival:850})
WITH flight38
MATCH (source38:City {name:"Melbourne"}), (destination38:City {name:"Los Angeles"})
CREATE (source38)-[:HAS_FLIGHT]->(flight38)-[:FLYING_TO]->(destination38)
CREATE (flight39:Flight {code:"QF95", carrier:"Quantas", duration:945, source_airport_code:"LAX", departure:1370, destination_airport_code:"MEL", arrival:515})
WITH flight39
MATCH (source39:City {name:"Los Angeles"}), (destination39:City {name:"Melbourne"})
CREATE (source39)-[:HAS_FLIGHT]->(flight39)-[:FLYING_TO]->(destination39)
CREATE (flight40:Flight {code:"U25482", carrier:"Easy Jet", duration:140, source_airport_code:"MAD", departure:1300, destination_airport_code:"LGW", arrival:1380})
WITH flight40
MATCH (source40:City {name:"Madrid"}), (destination40:City {name:"London"})
CREATE (source40)-[:HAS_FLIGHT]->(flight40)-[:FLYING_TO]->(destination40)

CREATE (flight41:Flight {code:"U25483", carrier:"Easy Jet", duration:145, source_airport_code:"LGW", departure:1150, destination_airport_code:"MAD", arrival:1355})
WITH flight41
MATCH (source41:City {name:"London"}), (destination41:City {name:"Madrid"})
CREATE (source41)-[:HAS_FLIGHT]->(flight41)-[:FLYING_TO]->(destination41)
CREATE (flight42:Flight {code:"FR5997", carrier:"Ryanair", duration:150, source_airport_code:"MAD", departure:1075, destination_airport_code:"LGW", arrival:1165})
WITH flight42
MATCH (source42:City {name:"Madrid"}), (destination42:City {name:"London"})
CREATE (source42)-[:HAS_FLIGHT]->(flight42)-[:FLYING_TO]->(destination42)
CREATE (flight43:Flight {code:"FR5996", carrier:"Ryanair", duration:155, source_airport_code:"LGW", departure:930, destination_airport_code:"MAD", arrival:1905})
WITH flight43
MATCH (source43:City {name:"London"}), (destination43:City {name:"Madrid"})
CREATE (source43)-[:HAS_FLIGHT]->(flight43)-[:FLYING_TO]->(destination43)
CREATE (flight44:Flight {code:"AF1180", carrier:"Air France", duration:75, source_airport_code:"CDG", departure:1145, destination_airport_code:"LHR", arrival:1165})
WITH flight44
MATCH (source44:City {name:"Paris"}), (destination44:City {name:"London"})
CREATE (source44)-[:HAS_FLIGHT]->(flight44)-[:FLYING_TO]->(destination44)
CREATE (flight45:Flight {code:"AF2309", carrier:"Air France", duration:70, source_airport_code:"LHR", departure:1070, destination_airport_code:"CDG", arrival:1200})
WITH flight45
MATCH (source45:City {name:"London"}), (destination45:City {name:"Paris"})
CREATE (source45)-[:HAS_FLIGHT]->(flight45)-[:FLYING_TO]->(destination45)
CREATE (flight46:Flight {code:"U22442", carrier:"Easy Jet", duration:75, source_airport_code:"CDG", departure:1305, destination_airport_code:"LHR", arrival:1315})
WITH flight46
MATCH (source46:City {name:"Paris"}), (destination46:City {name:"London"})
CREATE (source46)-[:HAS_FLIGHT]->(flight46)-[:FLYING_TO]->(destination46)
CREATE (flight47:Flight {code:"U22441", carrier:"Easy Jet", duration:70, source_airport_code:"LHR", departure:1130, destination_airport_code:"CDG", arrival:1265})
WITH flight47
MATCH (source47:City {name:"London"}), (destination47:City {name:"Paris"})
CREATE (source47)-[:HAS_FLIGHT]->(flight47)-[:FLYING_TO]->(destination47)
CREATE (flight48:Flight {code:"TK1963", carrier:"Turkish Airlines", duration:185, source_airport_code:"SAW", departure:570, destination_airport_code:"LHR", arrival:695})
WITH flight48
MATCH (source48:City {name:"Istanbul"}), (destination48:City {name:"London"})
CREATE (source48)-[:HAS_FLIGHT]->(flight48)-[:FLYING_TO]->(destination48)
CREATE (flight49:Flight {code:"TK1964", carrier:"Turkish Airlines", duration:290, source_airport_code:"LHR", departure:710, destination_airport_code:"SAW", arrival:1060})
WITH flight49
MATCH (source49:City {name:"London"}), (destination49:City {name:"Istanbul"})
CREATE (source49)-[:HAS_FLIGHT]->(flight49)-[:FLYING_TO]->(destination49)
CREATE (flight50:Flight {code:"PC519", carrier:"Pegasus", duration:180, source_airport_code:"SAW", departure:1235, destination_airport_code:"LGW", arrival:1375})
WITH flight50
MATCH (source50:City {name:"Istanbul"}), (destination50:City {name:"London"})
CREATE (source50)-[:HAS_FLIGHT]->(flight50)-[:FLYING_TO]->(destination50)

CREATE (flight51:Flight {code:"PC520", carrier:"Pegasus", duration:280, source_airport_code:"LGW", departure:1415, destination_airport_code:"SAW", arrival:315})
WITH flight51
MATCH (source51:City {name:"London"}), (destination51:City {name:"Istanbul"})
CREATE (source51)-[:HAS_FLIGHT]->(flight51)-[:FLYING_TO]->(destination51)
CREATE (flight52:Flight {code:"U25088", carrier:"Easy Jet", duration:230, source_airport_code:"ATH", departure:1260, destination_airport_code:"LHR", arrival:1370})
WITH flight52
MATCH (source52:City {name:"Athens"}), (destination52:City {name:"London"})
CREATE (source52)-[:HAS_FLIGHT]->(flight52)-[:FLYING_TO]->(destination52)
CREATE (flight53:Flight {code:"U25087", carrier:"Easy Jet", duration:220, source_airport_code:"LHR", departure:880, destination_airport_code:"ATH", arrival:1220})
WITH flight53
MATCH (source53:City {name:"London"}), (destination53:City {name:"Athens"})
CREATE (source53)-[:HAS_FLIGHT]->(flight53)-[:FLYING_TO]->(destination53)
CREATE (flight54:Flight {code:"A3600", carrier:"Aegean", duration:240, source_airport_code:"ATH", departure:555, destination_airport_code:"LHR", arrival:715})
WITH flight54
MATCH (source54:City {name:"Athens"}), (destination54:City {name:"London"})
CREATE (source54)-[:HAS_FLIGHT]->(flight54)-[:FLYING_TO]->(destination54)
CREATE (flight55:Flight {code:"A3603", carrier:"Aegean", duration:215, source_airport_code:"LHR", departure:995, destination_airport_code:"ATH", arrival:1330})
WITH flight55
MATCH (source55:City {name:"London"}), (destination55:City {name:"Athens"})
CREATE (source55)-[:HAS_FLIGHT]->(flight55)-[:FLYING_TO]->(destination55)
CREATE (flight56:Flight {code:"9W118", carrier:"Jet", duration:570, source_airport_code:"BOM", departure:775, destination_airport_code:"LHR", arrival:1075})
WITH flight56
MATCH (source56:City {name:"Mumbai"}), (destination56:City {name:"London"})
CREATE (source56)-[:HAS_FLIGHT]->(flight56)-[:FLYING_TO]->(destination56)
CREATE (flight57:Flight {code:"9W119", carrier:"Jet", duration:550, source_airport_code:"LHR", departure:1280, destination_airport_code:"BOM", arrival:660})
WITH flight57
MATCH (source57:City {name:"London"}), (destination57:City {name:"Mumbai"})
CREATE (source57)-[:HAS_FLIGHT]->(flight57)-[:FLYING_TO]->(destination57)
CREATE (flight58:Flight {code:"BA198", carrier:"British Airways", duration:575, source_airport_code:"BOM", departure:785, destination_airport_code:"LHR", arrival:1090})
WITH flight58
MATCH (source58:City {name:"Mumbai"}), (destination58:City {name:"London"})
CREATE (source58)-[:HAS_FLIGHT]->(flight58)-[:FLYING_TO]->(destination58)
CREATE (flight59:Flight {code:"BA176", carrier:"British Airways", duration:535, source_airport_code:"LHR", departure:625, destination_airport_code:"BOM", arrival:1430})
WITH flight59
MATCH (source59:City {name:"London"}), (destination59:City {name:"Mumbai"})
CREATE (source59)-[:HAS_FLIGHT]->(flight59)-[:FLYING_TO]->(destination59)
CREATE (flight60:Flight {code:"AI342", carrier:"Air India", duration:315, source_airport_code:"BOM", departure:1, destination_airport_code:"SIN", arrival:465})
WITH flight60
MATCH (source60:City {name:"Mumbai"}), (destination60:City {name:"Singapore"})
CREATE (source60)-[:HAS_FLIGHT]->(flight60)-[:FLYING_TO]->(destination60)

CREATE (flight61:Flight {code:"AI343", carrier:"Air India", duration:315, source_airport_code:"SIN", departure:1155, destination_airport_code:"BOM", arrival:1320})
WITH flight61
MATCH (source61:City {name:"Singapore"}), (destination61:City {name:"Mumbai"})
CREATE (source61)-[:HAS_FLIGHT]->(flight61)-[:FLYING_TO]->(destination61)
CREATE (flight62:Flight {code:"9W12", carrier:"Jet", duration:340, source_airport_code:"BOM", departure:80, destination_airport_code:"SIN", arrival:570})
WITH flight62
MATCH (source62:City {name:"Mumbai"}), (destination62:City {name:"Singapore"})
CREATE (source62)-[:HAS_FLIGHT]->(flight62)-[:FLYING_TO]->(destination62)
CREATE (flight63:Flight {code:"9W11", carrier:"Jet", duration:350, source_airport_code:"SIN", departure:625, destination_airport_code:"BOM", arrival:795})
WITH flight63
MATCH (source63:City {name:"Singapore"}), (destination63:City {name:"Mumbai"})
CREATE (source63)-[:HAS_FLIGHT]->(flight63)-[:FLYING_TO]->(destination63)
CREATE (flight64:Flight {code:"AF1533", carrier:"Air France", duration:205, source_airport_code:"CDG", departure:585, destination_airport_code:"ATH", arrival:840})
WITH flight64
MATCH (source64:City {name:"Paris"}), (destination64:City {name:"Athens"})
CREATE (source64)-[:HAS_FLIGHT]->(flight64)-[:FLYING_TO]->(destination64)
CREATE (flight65:Flight {code:"AF1534", carrier:"Air France", duration:200, source_airport_code:"ATH", departure:895, destination_airport_code:"CDG", arrival:1040})
WITH flight65
MATCH (source65:City {name:"Athens"}), (destination65:City {name:"Paris"})
CREATE (source65)-[:HAS_FLIGHT]->(flight65)-[:FLYING_TO]->(destination65)
CREATE (flight66:Flight {code:"A3614", carrier:"Aegean", duration:205, source_airport_code:"CDG", departure: 1235, destination_airport_code:"ATH", arrival:115})
WITH flight66
MATCH (source66:City {name:"Paris"}), (destination66:City {name:"Athens"})
CREATE (source66)-[:HAS_FLIGHT]->(flight66)-[:FLYING_TO]->(destination66)
CREATE (flight67:Flight {code:"A3615", carrier:"Aegean", duration:200, source_airport_code:"ATH", departure:1040, destination_airport_code:"CDG", arrival:1195})
WITH flight67
MATCH (source67:City {name:"Athens"}), (destination67:City {name:"Paris"})
CREATE (source67)-[:HAS_FLIGHT]->(flight67)-[:FLYING_TO]->(destination67)
CREATE (flight68:Flight {code:"AF1404", carrier:"Air France", duration:125, source_airport_code:"CDG", departure:965, destination_airport_code:"FCO",arrival:1081})
WITH flight68
MATCH (source68:City {name:"Paris"}), (destination68:City {name:"Rome"})
CREATE (source68)-[:HAS_FLIGHT]->(flight68)-[:FLYING_TO]->(destination68)
CREATE (flight69:Flight {code:"AF1003", carrier:"Air France", duration:130, source_airport_code:"FCO", departure:405, destination_airport_code:"CDG", arrival:535})
WITH flight69
MATCH (source69:City {name:"Rome"}), (destination69:City {name:"Paris"})
CREATE (source69)-[:HAS_FLIGHT]->(flight69)-[:FLYING_TO]->(destination69)
CREATE (flight70:Flight {code:"U4240", carrier:"Easy Jet", duration:120, source_airport_code:"CDG", departure:1070, destination_airport_code:"FCO", arrival:1190})
WITH flight70
MATCH (source70:City {name:"Paris"}), (destination70:City {name:"Rome"})
CREATE (source70)-[:HAS_FLIGHT]->(flight70)-[:FLYING_TO]->(destination70)

CREATE (flight71:Flight {code:"U4252", carrier:"Easy Jet", duration:120, source_airport_code:"FCO", departure:1225, destination_airport_code:"CDG", arrival:1345})
WITH flight71
MATCH (source71:City {name:"Rome"}), (destination71:City {name:"Paris"})
CREATE (source71)-[:HAS_FLIGHT]->(flight71)-[:FLYING_TO]->(destination71)
CREATE (flight72:Flight {code:"TK1842", carrier:"Turkish Airlines", duration:80, source_airport_code:"IST", departure:420, destination_airport_code:"ATH", arrival:500})
WITH flight72
MATCH (source72:City {name:"Istanbul"}), (destination72:City {name:"Athens"})
CREATE (source72)-[:HAS_FLIGHT]->(flight72)-[:FLYING_TO]->(destination72)
CREATE (flight73:Flight {code:"TK1841", carrier:"Turkish Airlines", duration:80, source_airport_code:"ATH", departure:1400,destination_airport_code:"IST", arrival:45})
WITH flight73
MATCH (source73:City {name:"Athens"}), (destination73:City {name:"Istanbul"})
CREATE (source73)-[:HAS_FLIGHT]->(flight73)-[:FLYING_TO]->(destination73)
CREATE (flight74:Flight {code:"A3992", carrier:"Aegean", duration:80, source_airport_code:"IST", departure:830, destination_airport_code:"ATH", arrival:915})
WITH flight74
MATCH (source74:City {name:"Istanbul"}), (destination74:City {name:"Athens"})
CREATE (source74)-[:HAS_FLIGHT]->(flight74)-[:FLYING_TO]->(destination74)
CREATE (flight75:Flight {code:"A3995", carrier:"Aegean", duration:80, source_airport_code:"ATH", departure:1280, destination_airport_code:"IST", arrival:1360})
WITH flight75
MATCH (source75:City {name:"Athens"}), (destination75:City {name:"Istanbul"})
CREATE (source75)-[:HAS_FLIGHT]->(flight75)-[:FLYING_TO]->(destination75)
CREATE (flight76:Flight {code:"AZ720", carrier:"Alitalia", duration:120, source_airport_code:"FCO", departure:520, destination_airport_code:"ATH", arrival:700})
WITH flight76
MATCH (source76:City {name:"Rome"}), (destination76:City {name:"Athens"})
CREATE (source76)-[:HAS_FLIGHT]->(flight76)-[:FLYING_TO]->(destination76)
CREATE (flight77:Flight {code:"AZ721", carrier:"Alitalia", duration:125, source_airport_code:"ATH", departure:1125, destination_airport_code:"FCO", arrival:1190})
WITH flight77
MATCH (source77:City {name:"Athens"}), (destination77:City {name:"Rome"})
CREATE (source77)-[:HAS_FLIGHT]->(flight77)-[:FLYING_TO]->(destination77)
CREATE (flight78:Flight {code:"FR1199", carrier:"Ryanair", duration:115, source_airport_code:"CIA", departure:375, destination_airport_code:"ATH", arrival:550})
WITH flight78
MATCH (source78:City {name:"Rome"}), (destination78:City {name:"Athens"})
CREATE (source78)-[:HAS_FLIGHT]->(flight78)-[:FLYING_TO]->(destination78)
CREATE (flight79:Flight {code:"FR1198", carrier:"Ryanair", duration:115, source_airport_code:"ATH", departure:590, destination_airport_code:"CIA", arrival:645})
WITH flight79
MATCH (source79:City {name:"Athens"}), (destination79:City {name:"Rome"})
CREATE (source79)-[:HAS_FLIGHT]->(flight79)-[:FLYING_TO]->(destination79)
CREATE (flight80:Flight {code:"JQ08", carrier:"Jetstar", duration:530, source_airport_code:"MEL", departure:660, destination_airport_code:"SIN", arrival:1010})
WITH flight80
MATCH (source80:City {name:"Melbourne"}), (destination80:City {name:"Singapore"})
CREATE (source80)-[:HAS_FLIGHT]->(flight80)-[:FLYING_TO]->(destination80)

CREATE (flight81:Flight {code:"JQ07", carrier:"Jetstar", duration:405, source_airport_code:"SIN", departure:1260, destination_airport_code:"MEL", arrival:405})
WITH flight81
MATCH (source81:City {name:"Singapore"}), (destination81:City {name:"Melbourne"})
CREATE (source81)-[:HAS_FLIGHT]->(flight81)-[:FLYING_TO]->(destination81)
CREATE (flight82:Flight {code:"QF05", carrier:"Quantas", duration:560, source_airport_code:"SYD", departure:965, destination_airport_code:"SIN", arrival:1350})
WITH flight82
MATCH (source82:City {name:"Sydney"}), (destination82:City {name:"Singapore"})
CREATE (source82)-[:HAS_FLIGHT]->(flight82)-[:FLYING_TO]->(destination82)
CREATE (flight83:Flight {code:"QF82", carrier:"Quantas", duration:415, source_airport_code:"SIN", departure:1320, destination_airport_code:"SYD", arrival:375})
WITH flight83
MATCH (source83:City {name:"Singapore"}), (destination83:City {name:"Sydney"})
CREATE (source83)-[:HAS_FLIGHT {}]->(flight83)-[:FLYING_TO]->(destination83)
CREATE (flight84:Flight {code:"SQ252", carrier:"Singapore Air", duration:560, source_airport_code:"SYD", departure:685, destination_airport_code:"SIN", arrival:1185})
WITH flight84
MATCH (source84:City {name:"Sydney"}), (destination84:City {name:"Singapore"})
CREATE (source84)-[:HAS_FLIGHT {}]->(flight84)-[:FLYING_TO]->(destination84)
CREATE (flight85:Flight {code:"SQ211", carrier:"Singapore Air", duration:400, source_airport_code:"SIN", departure:575, destination_airport_code:"SYD", arrival:1155})
WITH flight85
MATCH (source85:City {name:"Singapore"}), (destination85:City {name:"Sydney"})
CREATE (source85)-[:HAS_FLIGHT]->(flight85)-[:FLYING_TO]->(destination85)
CREATE (flight86:Flight {code:"QF349", carrier:"Quantas", duration:95, source_airport_code:"SYD", departure:840, destination_airport_code:"MEL", arrival:935})
WITH flight86
MATCH (source86:City {name:"Sydney"}), (destination86:City {name:"Melbourne"})
CREATE (source86)-[:HAS_FLIGHT]->(flight86)-[:FLYING_TO]->(destination86)
CREATE (flight87:Flight {code:"QF5419", carrier:"Quantas", duration:100, source_airport_code:"MEL", departure:555, destination_airport_code:"SYD", arrival:640})
WITH flight87
MATCH (source87:City {name:"Melbourne"}), (destination87:City {name:"Sydney"})
CREATE (source87)-[:HAS_FLIGHT]->(flight87)-[:FLYING_TO]->(destination87)
CREATE (flight88:Flight {code:"JQ529", carrier:"Jetstar", duration:85, source_airport_code:"SYD", departure:1235, destination_airport_code:"MEL", arrival:1330})
WITH flight88
MATCH (source88:City {name:"Sydney"}), (destination88:City {name:"Melbourne"})
CREATE (source88)-[:HAS_FLIGHT]->(flight88)-[:FLYING_TO]->(destination88)
CREATE (flight89:Flight {code:"JQ528", carrier:"Jetstar", duration:95, source_airport_code:"MEL", departure:1235, destination_airport_code:"SYD", arrival:1320})
WITH flight89
MATCH (source89:City {name:"Melbourne"}), (destination89:City {name:"Sydney"})
CREATE (source89)-[:HAS_FLIGHT]->(flight89)-[:FLYING_TO]->(destination89)
