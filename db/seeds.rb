# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Appliance.destroy_all
Estimate.destroy_all
Electcalc.destroy_all

appliances = Appliance.create([
  {name: "Furnace 15kw, approximately 1,100 sqft" , power: 1824},
  {name: "Furnace 20kw, approximately 2,000 sqft", power: 2434},
  {name: "Furnace 25kw, approximately 3,000 sqft", power: 3040},
  {name: "Heat Pump 800-1,000 sqft" , power: 1094},
  {name: "Heat Pump 1,100-2,000 sqft" , power: 1460},
  {name: "Heat Pump 2,000-3,000 sqft" , power: 1824},
  {name: "Central AC 2.5 ton, approximately 1,500 sqft" , power: 412},
  {name: "Central AC 3.5 ton, approximately 2,000 sqft" , power: 576},
  {name: "Central AC 5 ton, approximately 3,000 sqft" , power: 824},
  {name: "Furnace Fan" , power: 102},
  {name: "Computer/Printer" , power: 45},
  {name: "Refridgerator-freezer", power: 44},
  {name: "ENERGY STAR Refridgerator-freezer", power: 35},
  {name: "Freezer", power: 44},
  {name: "ENERGY STAR Freezer", power: 35},
  {name: "Clothes Dryer", power: 37},
  {name: "Range/Oven", power: 23},
  {name: "Flat-panel TV", power: 21},
  {name: "Game System", power: 20},
  {name: "Dishwasher", power: 18},
  {name: "Cable TV Box", power: 17},
  {name: "Clothes Washer", power: 13},
  {name: "Microwave", power: 11},
  {name: "Coffee Maker", power: 10},
  {name: "Lights (per fixture)", power: 6},
  {name: "Water Heater", power: 140}
  ])

  electcalc = Electcalc.create({state: "VA", avg_cost: 0.11, name: "Apartment" })

  estimates = Estimate.create([
    {appliance: Appliance.first, electcalc: electcalc, quantity: 10},
    {appliance: Appliance.last, electcalc: electcalc, quantity: 1}
    ])
