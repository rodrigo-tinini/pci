require 'csv'
namespace :import_csv do
  desc "TODO"
  task import_task: :environment do
  csv_text = File.open('gep_sampa_teste.csv',"r:ISO-8859-1")
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
  HealthEquipment.create!(row.to_hash)
end
puts "Import done"
  end

end
