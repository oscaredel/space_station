# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating initial seed"
Designer.destroy_all
Retailer.destroy_all

oscar = Designer.create!(
  first_name: "Oscar",
  last_name: "de la Renta",
  email: "Oscar@lalala.com",
  password: "123456",
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

monica = Retailer.create!(
  first_name: "Monica",
  last_name: "Geller",
  email: "monica@geller.com",
  password: "123456",
  profile_picture: "https://typeset-beta.imgix.net/rehost%2F2016%2F9%2F13%2F71c3ee5d-582f-4901-a519-59d49d17f091.png",
  city: "New York",
  age: 25,
  detail: "Hi I'm Monica. I live in New York with my 5 best friends. I'll always be there for them"
  )

superpilot = Look.create!(
  name: "Cool Pilot",
  detail: "Buy these clothes if you want to look like a cool pilot",
  picture_1: "https://i.pinimg.com/564x/25/6f/93/256f935c526173a953d9e3fdac1edb84--manfred-von-richthofen-flying-ace.jpg",
  picture_2: "http://c8.alamy.com/comp/HF8TF0/the-nazi-propaganda-image-shows-a-combat-pilot-of-the-german-luftwaffe-HF8TF0.jpg",
  picture_3: "https://s-media-cache-ak0.pinimg.com/originals/81/38/9d/81389d3a74ef97186144c668a29bb6e2.jpg",
  collection: spring_2018,
  designer: oscar
  )

nicehat = Product.create!(
  name: "Pilot hat",
  detail: "Real leather. Craftmanship design. Authetic war relic",
  color: "Black",
  sizes: [30,32,34,36],
  picture_1: "http://www.epicmilitaria.com/media/catalog/category/resize/section-pic_94.jpg",
  picture_2: "http://www.reddickmilitaria.com/images/products/0102-201-2.jpg",
  picture_3: "http://www.warhats.com/uploads/5/7/1/5/5715187/4287377_orig.jpg",
  picture_4: "http://thumbs4.ebaystatic.com/d/l225/m/mHWjF9sjJiCez1R5l0Z75Rg.jpg",
  collection: spring_2018,
  designer: oscar
  )

lookproduct = LookProduct.create!(
  look: superpilot,
  product: nicehat
  )

sc = StoreCollection.create!(
  season: "Spring",
  year: 2018,
  details: "My new collection for next year, lalala",
  retailer: monica
  )

sp = StoreProduct.create!(
  product: nicehat,
  store_collection: sc
  )

designerorder = DesignerOrder.create!(
  total_quote: 10.203,
  order_requested: true,
  order_confirmed: false,
  store_collection: sc
  )

op = OrderProduct.create!(
  size: "XL",
  quantity: 12,
  store_product: sp,
  designer_order: designerorder
  )

puts "done!"
