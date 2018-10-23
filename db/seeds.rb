# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first


# Listing.create(title: "help", description: "testing", "2001,2,3", landlord_name: "bob", landlord_info: "big man", landlord_phone: 1242, landlord_email: "dsada@fdsfs.com", address)


User.create(first_name: "Ed",last_name: "Stevens",phone: "7585111333",username: "Ed", bio: "ED ED ED ED ED ED ED ED ED ED")
User.create(first_name: "Bob",last_name: "Spankler",phone: "7585111333",username: "Bob", bio: "bobbity bob bob")
User.create(first_name: "Katie",last_name: "Junior",phone: "7585111333",username: "Katie", bio: "Katie Katzhyna Katia Katka KAAAA")
User.create(first_name: "Lucy",last_name: "Stevens",phone: "7585111333",username: "Lucy", bio: "Lucious Lucky Lucy")
User.create(first_name: "Steve",last_name: "Moviestar",phone: "7585111333",username: "Steve", bio: "Get in the hot tub with me, Steve!")

Listing.create(title: "Dream house 1", description: "A very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord One", landlord_phone: 421214214214, landlord_email: "landlord1@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", picture_url:"https://cdn.houseplans.com/product/q5qkhirat4bcjrr4rpg9fk3q94/w800x533.jpg", user_id: 1)

Listing.create(title: "Dream house 2", description: "IT IS ALSO A very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord2", landlord_phone: 4214, landlord_email: "landlord2@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", picture_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8vw2a-Qj5gxKul8qYXn0skbpNlAgUsCZWG4wKjcfRmwCQ2DhY", user_id: 2)

Listing.create(title: "Dream house 3", description: "THis is not a very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord3", landlord_phone: 911, landlord_email: "landlord3@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", picture_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREtTf5XOBaDdkO5dGGb8YQBSnb5zIhNWfiYB4IM6-C2WENoHwW", user_id: 3)

Listing.create(title: "Dream house 4", description: "A very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord2", landlord_phone: 077777777, landlord_email: "landlord4@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", picture_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREtTf5XOBaDdkO5dGGb8YQBSnb5zIhNWfiYB4IM6-C2WENoHwW", user_id: 4)
