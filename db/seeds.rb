# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Network.destroy_all
Equipment.destroy_all

puts "Creating users..."
jette = User.create!(email: "jette@test.com", password: "123456", first_name: "jette", last_name: 'handschumacher')
puts "Creating users..."
ziggy = User.create!(email: "ziggy@test.com", password: "123456", first_name: "dziugas", last_name: "bartkevicius", technician: true)

equipment_names = {
  'grundfos pump' => 'Pump',
  'solar pannels' => 'Panel',
  'Tank 5m3' => 'Tank',
  'Tank 10m3' => 'Tank',
  'Pentek filter system' => 'Filter',
  '20 inch 2 stage filter system(GAC & CTO)' => 'Filter',
  'Klorman inline dispencer' => 'Filter',
  'Kiosk superstructure' => 'Kiosk',
  'Water softener' => 'Water',
  '15 KVA Generator' => 'Electrics',
  'Booster pump' => 'Pump',
  'Electric Kit(Box, Fuses, inverter, solar controller)' => 'Electrics',
  'Batteries' => 'Electrics',
  'Pre-Paid Meter' => 'Electrics',
  'Pressure Switch' => 'Electrics',
  'Pressure gauges' => 'Meter',
  'Ball Valves 40mm' => 'Electrics',
  'Diffull Pump' => 'Pump',
  'Dosatron' => 'Pump',
  'Flow meter' => 'Meter',
  'Totalizers' => 'Meter',
  'Controller' => 'Electrics',
  'CashPower' => 'Meter',
  'UV System 165W-140LPM' => 'Electrics' ,
  'Grundfos submersible pump' => 'Pump',
  'Aqua Flo' => 'Water',
  'Wiring' => 'Electrics',
  'Difful submersible pump' => 'Pump',
  'Difful Solar Pump 200 Watts' => 'Pump',
  'Aquasept inline' => 'Water',
  'Sun pump' => 'Pump',
  'Pressure tank manifold' => 'Tank',
  'UV System 55W-45LPM' => 'Electrics'
}

equipment_names.each do |name, type|
  Equipment.create!(name: name, equipment_type: type)
end

network_names = {
  'Rwintare' => 'Rwintare Cell,Nyamirambo Sector',
  'Kavumu' => 'Kavumu Cell, Mageragere Sector',
  'Karukoro' => ' Karukoro Village, Nyamirambo Sector',
  'Kanyinya' => 'Nzove Cell, Kanyinya Sector',
  'Nyarufunzo' => ' Nyarufunzo Village, Mageragere Sector'
}

network_names.each do |name, address|
  Network.create!(name: name, network_address: address)
end
