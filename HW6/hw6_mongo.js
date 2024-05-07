// Question 1
var answer_1 = db.laureates.countDocuments({ bornCountry: "Germany", $or: [{bornCity : "Munich"}, {bornCity : "Berlin"}]});
//res: 15

// Question 2
var answer_2 = db.prizes.aggregate([ { $match: { "category": "peace", "year": { $gt: "2010" } } }, { $project: { _id: 0, year: 1, laureates: { $map: { input: "$laureates", as: "laureate", in: { firstname: "$$laureate.firstname", surname: "$$laureate.surname" } } } }} ]);

// Question 3
var answer_3 = db.laureates.aggregate([{$match: {$expr : {$eq :["$bornCountry", "$diedCountry"]}}}, {$project: {_id:0, firstname:"$firstname", surname:{$ifNull: ["$surname", ""]}, bornCountry:"$bornCountry"}}]);

// Question 4
var answer_4 = db.laureates.aggregate([ { $unwind: "$prizes" }, { $unwind: "$prizes.affiliations" }, { $group: { _id: "$prizes.affiliations.name", numberOfLaureates: { $sum: 1 } }}, { $project: { _id: 0, affiliationName: "$_id", numberOfLaureates: 1 } }, { $sort: {affiliationName: 1 } } ]);

// Question 5
var answer_5 =  db.prizes.aggregate([ { $project: { year: 1, category: 1, sharedPrize: { $cond: { if: { $gt: [{ $size: "$laureates" }, 1] }, then: true, else: false } } } }, { $match: { sharedPrize: true } }, { $group: { _id: "$year", categoriesWithManyLaureates: { $sum: 1 } } }, { $sort: { categoriesWithManyLaureates: -1 } }, { $project: { year: "$_id", categoriesWithManyLaureates: 1, _id: 0 } } ]);

// Question 6
var answer_6 = db.laureates.aggregate([ { $match: { bornCountry: { $not: /\(now/, $ne: null } } }, { $group: { _id: "$bornCountry", laureates: { $push: { firstname: "$firstname", surname: "$surname" } } } }, { $project: { _id: 0, bornCountry: "$_id", laureates: 1 } }, { $sort: { bornCountry: 1 } } ]);
