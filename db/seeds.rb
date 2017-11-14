# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Ingredient.create(name: "Lemon")
# Ingredient.create(name: "Ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "Light rum")
# Ingredient.create(name: "Applejack")
# Ingredient.create(name: "Gin")
# Ingredient.create(name: "Dark rum")
# Ingredient.create(name: "Sweet Vermouth")
# Ingredient.create(name: "Scotch")

oscar = Designer.create!(
  first_name: "Oscar",
  last_name: "de la Renta",
  email: "Oscar@lalala.com",
  encrypted_password: "123456",
  profile_picture: "https://www.thefamouspeople.com/profiles/images/oscar-de-la-renta-2.jpg",
  city: "Santo Domingo",
  age: 82,
  detail: "Super good designer, very much fashion"
  )

spring_2018 = Collection.create!(
  season: "Spring",
  year: 2018,
  detail: "Newest collection from Oscar de la Renta, straight from the grave",
  designer: oscar
)

monica = retailer = Retailer.create!(
  first_name: "Monica",
  last_name: "Geller",
  email: "monica@geller.com",
  encrypted_password: "123456",
  profile_picture: "https://typeset-beta.imgix.net/rehost%2F2016%2F9%2F13%2F71c3ee5d-582f-4901-a519-59d49d17f091.png",
  city: "New York",
  age: 25,
  detail: "Hi I'm Monica. I live in New York with my 5 best friends. I'll always be there for them"
  )

Designers
first_name: string
last_name: string
email: string
password: string
profile_picture: string
city: string
age: int
detail: text

generate model Designers

Retailers
first_name: string
last_name: string
email: string
password: string
profile_picture: string
detail: text
age: int
store_name: string
city: string
store_picture_1: string
store_picture_2: string
store_picture_3: string

Collections
season: string
year: int
detail:text
# designer: oscar

generate model Collection season year:integer detail:text designer:references

Looks
name: string
detail: text
picture_1: string
picture_2: string
picture_3: string
collection_id
designer_id

generate model Look name detail:text picture_1 picture_2 picture_3 collection:references designer:references

Products
name: string
detail: text
color: string
sizes: array
picture_1: string
picture_2: string
picture_3: string
picture_4: string
collection_id
designer_id

generate model Product name detail:text color sizes:text picture_1 picture_2 picture_3 picture_4 collection:references designer:references

Look_products
look_id
product_id

generate model LookProduct look:references product:references

# Store_collection Store Collection!
season: string
year: int
detail: text
retailer_id

generate model StoreCollection season year:integer detail:text retailer:references

Store_products
product_id
store_collection_id

generate model StoreProducts references:product store_collection:references

Designer_orders
total_quote: decimal
order_requested: bool
order_confirmed: bool
store_collection_id

generate model DesignerOrders total_quote:decimal order_requested:boolean order_confirmed:boolean store_collecton:references

Order_products
size: string
quantity: int
store_product_id
designer_order_id

generate model OrderProducts size quantity:integer store_product:references designer_order:references

Conversations
designer_id
retailer_id

Messages
content: text
sender: string
conversation_id
