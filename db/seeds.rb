# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
parkingdurations_info = [
  { maxduration: 3 }
]
parkingdurations_info.each do |p|
  Parkingduration.create(p) unless Parkingduration.find_by_maxduration p[:maxduration]; 
end

ligues_info = [
  { libel: 'Escrime' },
  { libel: 'Equitation' },
  { libel: "Tir à l'arc" },
  { libel: 'Atletisme' },
  { libel: "Basket" },
  { libel: "Natation" },
  { libel: "Judo" }
]

ligues_info.each do |l| Ligue.create(l) unless Ligue.find_by_libel l[:libel]; end

placeparkings_info = [
	{ libel: "01", occupied: false },
  { libel: "02", occupied: false }
]

placeparkings_info.each do |pl|
  Placeparking.create(pl) unless Placeparking.find_by_libel pl[:libel];
end