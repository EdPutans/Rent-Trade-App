# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first


# Listing.create(title: "help", description: "testing", "2001,2,3", landlord_name: "bob", landlord_info: "big man", landlord_phone: 1242, landlord_email: "dsada@fdsfs.com", address)


#Users

User.create(first_name: "Ed",last_name: "Stevens",phone: "32131333",username: "Ed", bio: "ED ED ED ED ED ED ED ED ED ED")
User.create(first_name: "Bob",last_name: "Spankler",phone: "5667333",username: "Bob", bio: "bobbity bob bob")
User.create(first_name: "Katie",last_name: "Junior",phone: "98376033",username: "Katie", bio: "Katie Katzhyna Katia Katka KAAAA")
User.create(first_name: "Lucy",last_name: "Stevens",phone: "7585187876633",username: "Lucy", bio: "Lucious Lucky Lucy")
User.create(first_name: "Steve",last_name: "Moviestar",phone: "111256657",username: "Steve", bio: "Get in the hot tub with me, Steve!")
User.create(first_name: "Sparta",last_name: "DmC",phone: "6555446210",username: "spartaaa", bio: "I kill demons!")

#listings


Listing.create(title: "Dream house", description: "A very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord One", landlord_phone: 421214214214, landlord_email: "landlord1@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", user_id: 1,postcode: "N1")

Listing.create(title: "Interesting design", description: "IT IS ALSO A very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord2", landlord_phone: 4214, landlord_email: "landlord2@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", user_id: 2,postcode: "N1")

Listing.create(title: "Cool flat", description: "THis is not a very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord3", landlord_phone: 911, landlord_email: "landlord3@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", user_id: 3,postcode: "E4")

Listing.create(title: "I wanna trade my room!", description: "A very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord2", landlord_phone: 077777777, landlord_email: "landlord4@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", user_id: 4,postcode: "E3")

Listing.create(title: "Wanna switch?", description: "A very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord One", landlord_phone: 421214214214, landlord_email: "landlord1@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", user_id: 5,postcode: "W14")

Listing.create(title: "home4home", description: "IT IS ALSO A very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord2", landlord_phone: 4214, landlord_email: "landlord2@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", user_id: 6,postcode: "SW1")

Listing.create(title: "Unfurnished, exchanging!", description: "THis is not a very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord3", landlord_phone: 911, landlord_email: "landlord3@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", user_id: 3,postcode: "E2")

Listing.create(title: "Wanna get outta town", description: "A very dreamy sexy cool house you would love to live in lorem ipsum dolor sit ameeeeeeeeeeeeet", landlord_name: "Landlord2", landlord_phone: 077777777, landlord_email: "landlord4@gmail.com", landlord_info: "I am a landlord. I own this house. Call me please I am lonely.", user_id: 4,postcode: "E7")



#pictures


Picture.create(picture_url: "http://www.solidbuilders.co.nz/wp-content/uploads/2014/01/Inside-House-and-Outside-House-10-800x605.jpg",listing_id: 1 )
Picture.create(picture_url:"https://images.adsttc.com/media/images/512a/50d1/b3fc/4b11/a700/8f66/large_jpg/1303147617-casa-interior-exterior-02.jpg?1414323056",listing_id: 1 )
Picture.create(picture_url:"https://cdn.freshome.com/wp-content/uploads/2015/07/Mansfield-House-by-Amit-Apel.jpg",listing_id: 2 )
Picture.create(picture_url:"https://image.shutterstock.com/image-illustration/green-interior-living-room-260nw-174021608.jpg",listing_id: 3 )
Picture.create(picture_url:"http://jpninfo.com/wp-content/uploads/2015/06/inside-house-7.jpg",listing_id: 4 )
Picture.create(picture_url:"https://media-cdn.tripadvisor.com/media/photo-s/0f/2f/62/fa/inside-house.jpg",listing_id:5 )
Picture.create(picture_url:"http://www.housevolta.com/wp-content/uploads/2018/02/living_room_02.jpg",listing_id:6 )
Picture.create(picture_url:"http://www.housevolta.com/wp-content/uploads/2018/02/living_room_03-1.jpg",listing_id: 6 )
Picture.create(picture_url:"http://winduprocketapps.com/wp-content/uploads/2018/07/really-cool-rooms-attractive-ideas-bedrooms-in-4.jpg",listing_id: 8 )
Picture.create(picture_url:"http://real-complect.ru/image/data/12554.jpeg",listing_id: 8)
Picture.create(picture_url:"http://3.bp.blogspot.com/-oO9Rox2Jvjs/VSJfCH7o2YI/AAAAAAAADWI/0iM50nwWBG4/s1600/bigstock-Empty-New-Room-3526127%5B1%5D.jpg",listing_id: 7)
