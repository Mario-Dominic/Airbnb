# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

properties = Property.create!(
  name: 'sample property',
  description: 'amazing',
  headline: 'On sale',
  address_1: 'hale street',
  address_2: '2331xc',
  city: 'Amsterdam',
  state: 'South Holland',
  country:'the Netherlands',
)

properties = Property.create!(
  name: 'sample property 2',
  description: 'Nice',
  headline: 'On sale',
  address_1: 'Nabaa',
  address_2: '331zz',
  city: 'Beirut',
  state: 'Maten',
  country:'Lebanon',
)
