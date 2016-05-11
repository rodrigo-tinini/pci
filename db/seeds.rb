require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
      csv_text = File.open('geo_sampa.csv',"r:ISO-8859-1")
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
      HealthEquipment.create!(row.to_hash)
      puts "Import done"
  end