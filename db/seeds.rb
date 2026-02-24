# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Destroying animals"
Pet.destroy_all

puts "Creating 20 animals..."

20.times do
  Pet.create(name: Faker::Artist.name, address: Faker::Address.full_address, found_on: Faker::Date.between(from: 10.days.ago, to: Date.today), species: Pet::SPECIES.sample)
end

puts "Animals created"
