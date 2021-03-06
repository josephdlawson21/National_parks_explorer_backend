require 'byebug'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# json = ActiveSupport::JSON.decode(File.read('db/data.json'))


data =



byebug

json['data'].map do |item|
  Park.create(name: item['name'],
              parkCode: item['parkCode'],
              state: item['states'],
              image: item['images'][0]['url'],
              designation: item['designation'],
              latLong: item['latLong'],
              description: item['description']
            )
end


User.create(username: "jo")
Trip.create(user_id: 1, park_id: 1)
Review.create(trip_id: 1)
