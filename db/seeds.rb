# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️

puts 'Cleaning the database...'
Restaurant.destroy_all
puts 'Database cleaned!'

# 2. Create the instances 🏗️

puts 'Creating restaurants...'
Restaurant.create!(
  name: 'China in Box',
  address: 'Rua dos Pinheiros',
  phone_number: '(11) 99887-7765',
  category: 'chinese'
)

Restaurant.create!(
  name: 'Olive Garden',
  address: 'Roque Petroni Jr., 1089',
  phone_number: '(11) 95181-8111',
  category: 'italian'
)

Restaurant.create!(
  name: 'Taioba Sushi',
  address: 'Rua Teodoro Sampaio, 2550',
  phone_number: '(11) 99369-6529',
  category: 'japanese'
)

Restaurant.create!(
  name: 'La Maison',
  address: 'Rua Pirapora, 218',
  phone_number: '(11) 92613-0253',
  category: 'french'
)

Restaurant.create!(
  name: 'Louts',
  address: 'Av. Lavandisca, 395',
  phone_number: '(11) 97555-0654',
  category: 'belgian'
)

puts "#{Restaurant.count} restaurants created!"

# 3. Display a message 🎉
puts 'All done!'
