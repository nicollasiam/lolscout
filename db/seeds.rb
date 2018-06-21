# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Removing all Subscriptions...'
Subscription.destroy_all
puts 'Seeding Subscriptions...'
Subscription.create!([{ summoner_name: 'Eu sou o Jojo' },
                      { summoner_name: 'HKS Caos' },
                      { summoner_name: 'Rhaegalarys' },
                      { summoner_name: 'God Needles' },
                      { summoner_name: 'Avalanche' },
                      { summoner_name: 'KT Mandiocaa' },
                      { summoner_name: 'Revali' },
                      { summoner_name: 'AKMU' },
                      { summoner_name: 'Bhz' }])

puts 'Removing all Periods...'
Period.destroy_all
puts 'Seeding Periods...'
Period.create!(last_update_at: (DateTime.now - 7.days).strftime('%Q').to_i, kind: 'update_database')
