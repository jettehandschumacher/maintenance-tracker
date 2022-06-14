# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Comment.destroy_all
Task.destroy_all
WaterpointEquipment.destroy_all
Waterpoint.destroy_all
Network.destroy_all
Equipment.destroy_all
Service.destroy_all
User.destroy_all

puts "Destroyed data"

christelle = User.create!(email: "christelle@test.com", password: "123456", first_name: "christelle", last_name: 'kwizera', technician: false)
christelle.photo.attach(io: File.open('app/assets/images/christelle.png'), filename: 'christelle.png', content_type: 'image/png')
djibril = User.create!(email: "djibril@test.com", password: "123456", first_name: "djibril", last_name: "hategekimana", technician: true)
djibril.photo.attach(io: File.open('app/assets/images/djibril.png'), filename: 'djibril.png', content_type: 'image/png')
romain = User.create!(email: "romain@test.com", password: "123456", first_name: "romain", last_name: "zirimwabagabo", technician: true)
romain.photo.attach(io: File.open('app/assets/images/romain.png'), filename: 'romain.png', content_type: 'image/png')
bosco = User.create!(email: "bosco@test.com", password: "123456", first_name: "bosco", last_name: "urazibara", technician: true)
bosco.photo.attach(io: File.open('app/assets/images/bosco.png'), filename: 'bosco.png', content_type: 'image/png')
christine = User.create!(email: "christine@test.com", password: "123456", first_name: "christine", last_name: "iradukunda", technician: true)
christine.photo.attach(io: File.open('app/assets/images/christine.png'), filename: 'christine.png', content_type: 'image/png')
emile = User.create!(email: "emile@test.com", password: "123456", first_name: "emile", last_name: "rugero", technician: true)
emile.photo.attach(io: File.open('app/assets/images/emile.png'), filename: 'emile.png', content_type: 'image/png')

puts "Created users..."

kiosk = Equipment.create!(name: "Kiosk superstructure", equipment_type: "Kiosk", warranty_valid: true)
grundfos_pump = Equipment.create!(name: "grundfos pump", equipment_type: "Pump", warranty_valid: true)
solar_pannels = Equipment.create!(name: "solar pannels", equipment_type: "Panel", warranty_valid: true)
tank_5m3 = Equipment.create!(name: "Tank 5m3", equipment_type: "Tank", warranty_valid: true)
tank_10m3 = Equipment.create!(name: "Tank 10m3", equipment_type: "Tank", warranty_valid: true)
filter_system = Equipment.create!(name: "Pentek filter system", equipment_type: "Filter", warranty_valid: true)
gac_cto = Equipment.create!(name: "20 inch 2 stage filter system(GAC & CTO)", equipment_type: "Filter", warranty_valid: true)
klorman = Equipment.create!(name: "Klorman inline dispencer", equipment_type: "Filter", warranty_valid: true)
softener = Equipment.create!(name: "Water softener", equipment_type: "Water", warranty_valid: true)
generator = Equipment.create!(name: "15 KVA Generator", equipment_type: "Electrics", warranty_valid: true)
booster_pump = Equipment.create!(name: "Booster pump", equipment_type: "Pump", warranty_valid: true)
electric_kit = Equipment.create!(name: "Electric kit", equipment_type: "Electrics", warranty_valid: true)
battereis = Equipment.create!(name: "Batteries", equipment_type: "Electrics", warranty_valid: true)
paid_meter = Equipment.create!(name: "Pre-Paid Meter", equipment_type: "Electrics", warranty_valid: false)
switch = Equipment.create!(name: "Pressure Switch", equipment_type: "Electrics", warranty_valid: false)
gauges = Equipment.create!(name: "Pressure gauges", equipment_type: "Meter", warranty_valid: false)
valves = Equipment.create!(name: "Ball Valves 40mm", equipment_type: "Electrics", warranty_valid: false)
dosatron = Equipment.create!(name: "Dosatron", equipment_type: "Pump", warranty_valid: false)
flow_meter = Equipment.create!(name: "Flow meter", equipment_type: "Meter", warranty_valid: false)
totalizer = Equipment.create!(name: "Totalizer", equipment_type: "Meter", warranty_valid: false)
controller = Equipment.create!(name: "Controller", equipment_type: "Electrics", warranty_valid: false)
cashpower = Equipment.create!(name: "CashPower", equipment_type: "Meter", warranty_valid: false)
uv_165W = Equipment.create!(name: "UV System 165W-140LPM", equipment_type: "Electrics", warranty_valid: false)
grundfos_submersible_pump = Equipment.create!(name: "Grundfos submersible pump", equipment_type: "Pump", warranty_valid: false)
aquasept = Equipment.create!(name: "Aquasept inline", equipment_type: "Water", warranty_valid: false)
sun_pump = Equipment.create!(name: "Sun pump", equipment_type: "Pump", warranty_valid: false)
pressure_tank = Equipment.create!(name: "Pressure tank manifold", equipment_type: "Tank", warranty_valid: false)
uv_55W = Equipment.create!(name: "UV System 55W-45LPM", equipment_type: "Electrics", warranty_valid: false)

puts "Created Equipment"

rwintare_network = Network.create!(name: "Rwintare", address: '157 KN 2 Ave, Kigali, Ruanda')
kavumu_network = Network.create!(name: "Kavumu", address: 'KK 329 St, Kigali, Ruanda')
karukoro_network = Network.create!(name: "Karukoro", address: 'KG 5 Ave, Kigali, Ruanda')
kanyinya_network = Network.create!(name: "Kanyinya", address: '19 KG 573 St, Kigali, Ruanda')
nyarufunzo_network = Network.create!(name: "Nyarufunzo", address: 'KG 28 Ave, Kigali, Ruanda')
rusizi_network = Network.create!(name: "Rusizi", address: '131 KN 2 Ave, Kigali, Ruanda')

puts "Created Networks"

rwintare_nexus = Waterpoint.create(name: "Rwintare", waterpoint_type: "Nexus", address: "157 KN 2 Ave, Kigali, Ruanda", kiosk: true, network: rwintare_network)
rwintare_node = Waterpoint.create(name: "Rwintare", waterpoint_type: "Node", address: "157 KN 2 Ave, Kigali, Ruanda", kiosk: true, network: rwintare_network)
kavumu_nexus = Waterpoint.create(name: "Kavumu", waterpoint_type: "Nexus", address: "KK 329 St, Kigali, Ruanda", kiosk: true, network: kavumu_network)
kavumu_node = Waterpoint.create(name: "Kavumu", waterpoint_type: "Node", address: "KK 329 St, Kigali, Ruanda", kiosk: true, network: kavumu_network)
karukoro_nexus = Waterpoint.create(name: "Karukoro", waterpoint_type: "Nexus", address: "KG 5 Ave, Kigali, Ruanda", kiosk: true, network: karukoro_network)
kanyinya_nexus = Waterpoint.create(name: "Kanyinya", waterpoint_type: "Nexus", address: "19 KG 573 St, Kigali, Ruanda", kiosk: true, network: kanyinya_network)
kanyinya_standpipe = Waterpoint.create(name: "Kanyinya", waterpoint_type: "Standpipe", address: "19 KG 573 St, Kigali, Ruanda", kiosk: false, network: kanyinya_network)
nyarufunzo_nexus = Waterpoint.create(name: "Nyarufunzo", waterpoint_type: "Nexus", address: "KG 28 Ave, Kigali, Ruanda", kiosk: true, network: nyarufunzo_network)
nyarufunzo_node = Waterpoint.create(name: "Nyarufunzo", waterpoint_type: "Node", address: "KG 28 Ave, Kigali, Ruanda", kiosk: true, network: nyarufunzo_network)
rusizi_nexus = Waterpoint.create(name: "Rusizi", waterpoint_type: "Nexus", address: "131 KN 2 Ave, Kigali, Ruanda", kiosk: true, network: rusizi_network)
rusizi_node = Waterpoint.create(name: "Rusizi", waterpoint_type: "Node", address: "131 KN 2 Ave, Kigali, Ruanda", kiosk: true, network: rusizi_network)
rusizi_nano = Waterpoint.create(name: "Rusizi", waterpoint_type: "Nano", address: "131 KN 2 Ave, Kigali, Ruanda", kiosk: false, network: rusizi_network)

puts "Created Waterpoints"

WaterpointEquipment.create!(equipment: pressure_tank, waterpoint: rwintare_nexus)
WaterpointEquipment.create!(equipment: klorman, waterpoint: rwintare_node)
WaterpointEquipment.create!(equipment: tank_5m3, waterpoint: rwintare_node)
WaterpointEquipment.create!(equipment: tank_10m3, waterpoint: rwintare_nexus)
WaterpointEquipment.create!(equipment: solar_pannels, waterpoint: rwintare_nexus)

WaterpointEquipment.create!(equipment: flow_meter, waterpoint: kavumu_node)
WaterpointEquipment.create!(equipment: uv_165W, waterpoint: kavumu_nexus)
WaterpointEquipment.create!(equipment: sun_pump, waterpoint: kavumu_nexus)
WaterpointEquipment.create!(equipment: grundfos_pump, waterpoint: kavumu_node)
WaterpointEquipment.create!(equipment: aquasept, waterpoint: kavumu_node)

WaterpointEquipment.create!(equipment: flow_meter, waterpoint: karukoro_nexus)
WaterpointEquipment.create!(equipment: generator, waterpoint: karukoro_nexus)
WaterpointEquipment.create!(equipment: softener, waterpoint: karukoro_nexus)
WaterpointEquipment.create!(equipment: booster_pump, waterpoint: karukoro_nexus)
WaterpointEquipment.create!(equipment: gauges, waterpoint: karukoro_nexus)

WaterpointEquipment.create!(equipment: sun_pump, waterpoint: kanyinya_nexus)
WaterpointEquipment.create!(equipment: battereis, waterpoint: kanyinya_standpipe)
WaterpointEquipment.create!(equipment: grundfos_pump, waterpoint: kanyinya_nexus)
WaterpointEquipment.create!(equipment: solar_pannels, waterpoint: kanyinya_standpipe)
WaterpointEquipment.create!(equipment: kiosk, waterpoint: kanyinya_standpipe)

WaterpointEquipment.create!(equipment: kiosk, waterpoint: nyarufunzo_nexus)
WaterpointEquipment.create!(equipment: klorman, waterpoint: nyarufunzo_node)
WaterpointEquipment.create!(equipment: valves, waterpoint: nyarufunzo_node)
WaterpointEquipment.create!(equipment: dosatron, waterpoint: nyarufunzo_node)
WaterpointEquipment.create!(equipment: aquasept, waterpoint: nyarufunzo_nexus)

WaterpointEquipment.create!(equipment: sun_pump, waterpoint: rusizi_nano)
WaterpointEquipment.create!(equipment: pressure_tank, waterpoint: rusizi_node)
WaterpointEquipment.create!(equipment: aquasept, waterpoint: rusizi_nano)
WaterpointEquipment.create!(equipment: electric_kit, waterpoint: rusizi_node)
WaterpointEquipment.create!(equipment: filter_system, waterpoint: rusizi_nano)

puts "Created Waterpoint Equipments"

painting = Service.create(name: "Painting", frequency: 12)
maintenance = Service.create(name: "Maintenance Check", frequency: 6)
cleaning = Service.create(name: "Cleaning", frequency: 1)
catridge = Service.create(name: "Cartridge Replacement", frequency: 6)
replacement = Service.create(name: "Replacement", frequency: 2)
resin = Service.create(name: "Resin Refill", frequency: 2)
general = Service.create(name: "General Service", frequency: 6)

puts "Created Services"

task_one = Task.create(start_date: Date.new(2022, 6, 12), end_date: Date.new(2022, 2, 14), extra_info: "Please fix the solar panel", complete_task: false, manager: christelle, technician: romain, equipment: solar_pannels, service: general, waterpoint: rwintare_nexus, network: rwintare_network)
task_two = Task.create(start_date: Date.new(2022, 6, 8), end_date: Date.new(2022, 6, 8), extra_info: "Clean the outside area of the Nexus", complete_task: false, manager: christelle, technician: christine, equipment: kiosk, service: cleaning, waterpoint: rusizi_nexus, network: rusizi_network)
task_three = Task.create(start_date: Date.new(2022, 6, 1), end_date: Date.new(2022, 6, 2), extra_info: "Replace the dirty filter", complete_task: true, manager: christelle, technician: bosco, equipment: klorman, service: replacement, waterpoint: nyarufunzo_node, network: nyarufunzo_network)
task_four = Task.create(start_date: Date.new(2022, 6, 29), end_date: Date.new(2022, 6, 30), extra_info: "Do a check-up visit on the kiosk", complete_task: true, manager: christelle, technician: djibril, equipment: kiosk, service: general, waterpoint: kavumu_nexus, network: kavumu_network)
task_five = Task.create(start_date: Date.new(2022, 6, 22), end_date: Date.new(2022, 6, 24), extra_info: "Do a maintenance check-up on the totalizer", complete_task: true, manager: christelle, technician: romain, equipment: totalizer, service: maintenance, waterpoint: rwintare_nexus, network: rwintare_network)
task_six = Task.create(start_date: Date.new(2022, 6, 12), end_date: Date.new(2022, 6, 15), extra_info: "Perform maintenance on the meter", complete_task: false, manager: christelle, technician: emile, equipment: paid_meter, service: maintenance, waterpoint: kavumu_nexus, network: kavumu_network)
task_seven = Task.create(start_date: Date.new(2022, 6, 20), end_date: Date.new(2022, 6, 21), extra_info: "Catrige replacement on the filter required", complete_task: true, manager: christelle, technician: bosco, equipment: gac_cto, service: catridge, waterpoint: kanyinya_nexus, network: kanyinya_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(start_date: Date.new(2022, 6, 6), end_date: Date.new(2022, 6, 7), extra_info: "Please do a resin refill on the water softener", complete_task: false, manager: christelle, technician: djibril, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)

puts "Created Tasks"

comment_one = Comment.create(user: djibril, task: task_eight, content: "Muraho Christelle, ikibabaje nuko ntabashije kuzuza ibisigazwa byoroshya amazi - Mbabarira. Nzarangiza imirimo ejo.")

puts "Create Comments"
