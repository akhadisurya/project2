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
        {first_name: "Taylor", last_name: "Swift", gender: "Female", age: 25, image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_17RrCCXzc_Ev8H3FX1QkxjFA8VgxPhkKHLU30QyGdw8BTU_1iw"},
        {first_name: "Leonardo", last_name: "DiCaprio", gender: "Male", age: 42, image:"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS7V4h1RYmM34O30hTubT4gRS0AA62glrMLJbvIcM5nDopm3hZI"},
        {first_name: "Zac", last_name: "Efron", gender: "Male", age: 27, image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfduhpyeqNYpggOK8wolGrdoiSzmUQJWXE6G6ewJj5etvMtNOTYg"},
        {first_name: "Gal", last_name: "Gadot", gender: "Female", age: 35, image:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ8QJuXw5k7BYYJgDITpV5HSFzuHnC4XVMJ_YNJOrviLCt9wBhXqA"},
        {first_name: "David", last_name: "Beckham", gender: "Male", age: 46, image:"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTw1nWZHVx3li7ccsAi8KfgwYZGbRZFS7qal7KthUOYMGgDiVVRfA"}

    ])

