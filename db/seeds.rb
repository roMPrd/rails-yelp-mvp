# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
master_poulet = { name: 'master poulet', address: 'en face du Marquise', phone_number: '+336 15 12 45 01', category: 'french' }
l_alicheur = { name: "l'Alicheur", address: 'pas si loin', phone_number: '+336 15 12 45 02', category: 'chinese' }
boulangerie = { name: 'Boulangerie', address: 'à coté', phone_number: '+336 15 12 45 03', category: 'italian' }
chinois =  { name: 'chinois', address: 'pas loin', phone_number: '+336 15 12 45 04', category: 'chinese' }
banh_mi =  { name: 'Banh Mi', address: 'loin', phone_number: '+336 15 12 45 05', category: 'japanese' }

[master_poulet, l_alicheur, boulangerie, chinois, banh_mi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
