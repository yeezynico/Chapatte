require "faker"

Item.destroy_all
User.destroy_all
Order.destroy_all
Cart.destroy_all

search_terms = ['cat']
8.times do
  new_item = Item.create(title: Faker::Creature::Cat.breed,
   description: Faker::ChuckNorris.fact, 
   price: Faker::Commerce.price, 
   image_url: Faker::LoremFlickr.image(search_terms: [search_terms.cycle.next]))
end

10.times do 
  User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Name.first_name + "@yopmail.com",
    password: "password")
  end

  # Admin
User.create(
  first_name: "Admin",
  last_name: "Hero",
  email: "admin@yopmail.com",
  password: "123456",
  is_admin: true)

