# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Match.destroy_all



  Match.create([
        {first_name: "Emma", last_name: "Watson", gender: "Female", age: 22, image: "http://images-cdn.moviepilot.com/image/upload/v1426602397/bb1f41c779b62689a8bc5dc7824db057_large-it-felt-like-incest-emma-watson-expresses-her-views-on-kissing-rupert-grint-jpeg-236998.jpg"},
        {first_name: "Lana", last_name: "Del Rey", gender: "Female", age: 26, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb-VS5GJK3SfXvtr9f-ApYKG15uCubCn8CZmC5VgxIFHXXG-Qi"},
        {first_name: "Olivia", last_name: "Munn", gender: "Female", age: 36, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZGFeLWSBrVM2KQqHCy9bp-HdEIdqm8J8ftxAoWbHqygDOCk0b"},
        {first_name: "Emily", last_name: "Ratajkowski", gender: "Female", age: 22, image:"http://img2-3.timeinc.net/people/i/2016/news/160125/emily-ratajkowski-435.jpg"},

    ])

