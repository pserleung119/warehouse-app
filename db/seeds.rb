# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Warehouse.create([
  {name: 'Roppongi', address: '6 Chome-11-1 Roppongi, Minato City, Tokyo 106-6108'},
  {name: 'Shinjuku', address: '3 Chome-15-１５ Shinjuku, Shinjuku City, Tokyo 160-0022'}
])


Item.create([
  {name: 'ItemA', price: 300, warehouse_id: Warehouse.where(name: 'Shinjuku').first.id},
  {name: 'ItemB', price: 700, warehouse_id: Warehouse.where(name: 'Shinjuku').first.id},
  {name: 'ItemC', price: 3000, warehouse_id: Warehouse.where(name: 'Shinjuku').first.id},
  {name: 'ItemD', price: 400, warehouse_id: Warehouse.where(name: 'Shinjuku').first.id},
  {name: 'ItemE', price: 500, warehouse_id: Warehouse.where(name: 'Shinjuku').first.id},
  {name: 'ItemF', price: 7700, warehouse_id: Warehouse.where(name: 'Roppongi').first.id},
  {name: 'ItemG', price: 11300, warehouse_id: Warehouse.where(name: 'Roppongi').first.id},
  {name: 'ItemH', price: 1300, warehouse_id: Warehouse.where(name: 'Shinjuku').first.id},
  {name: 'ItemI', price: 3400, warehouse_id: Warehouse.where(name: 'Shinjuku').first.id},
  {name: 'ItemJ', price: 3500, warehouse_id: Warehouse.where(name: 'Shinjuku').first.id},
  {name: 'ItemK', price: 3080, warehouse_id: Warehouse.where(name: 'Shinjuku').first.id},
  {name: 'ItemL', price: 3010, warehouse_id: Warehouse.where(name: 'Shinjuku').first.id},
  {name: 'ItemM', price: 2300, warehouse_id: Warehouse.where(name: 'Shinjuku').first.id},
  {name: 'ItemN', price: 5300, warehouse_id: Warehouse.where(name: 'Roppongi').first.id},
  {name: 'ItemO', price: 10300, warehouse_id: Warehouse.where(name: 'Roppongi').first.id},
])