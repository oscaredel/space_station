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
  brand: "Oscar de la Renta",
  first_name: "Oscar",
  last_name: "de la Renta",
  email: "Oscar@lalala.com",
  password: "123456",
  profile_picture: "https://www.thefamouspeople.com/profiles/images/oscar-de-la-renta-2.jpg",
  city: "Santo Domingo",
  age: 82,
  detail: "Super good designer, very much fashion"
  )

rocket = Designer.create!(
  brand: "Rocket X Lunch",
  first_name: "Yoon",
  last_name: "Xi",
  email: "moonyoon@rocket.com",
  password: "123456",
  profile_picture: "http://rocketxlunch.com/web/upload/category/editor/2015/08/20/70ed2ec10447ab72d0eafc51c49a43a7.png",
  city: "Seoul",
  age: 2010,
  detail: "ROCKET X LUNCH outstands by its color combinations and design per se, without its logo.
Launched 2010, ROCKET X LUNCHhas held 4 collections every year and been active domestically and internationally.
This brand displays humorous designs through mixing things and surpassing common expectations as its brand name is implying.
By doing so, ROCKET X LUNCHhas become a popular brand which is accepted as trendy and original with reasonable price among the young fashion influencers.
"
  )

umit = Designer.create!(
  brand: "Umit Benan",
  first_name: "Umit",
  last_name: "Benan",
  email: "umithimself@benan.common",
  password: "123456",
  profile_picture: "https://www.umitbenan.com/img/umit-benan-logo-1495536864.jpg",
  city: "Milan",
  age: 2009,
  detail:" Umit Benan wanted to be a filmmaker, but diverted to fashion rather naturally, keeping the urge to tell stories intact. He makes no real distinction between life, fantasy and fiction because really there isn’t one. “I am interested in contrasts. That’s what life is all about, isn’t it?” he says. His clothes – real, bold, imaginative – follow suit.
Aesthetic imprinting leaves an indelible mark on fertile minds. Umit Benan was born to Turkish parents in Germany in 1980, and raised in Istanbul. As a kid in the 80s, he was bombarded with the assertive fashions and powerful masculine visions of the time, thanks to his clothing manufacturer father. As a teen in the 90s, he absorbed the contrasts and layering of the decade while growing up away from home at boarding school and university, in Switzerland and the US. His utterly personal point of view stems from these roots.
After graduation, Umit landed jobs with prestigious designers in New York and in Milan, where he finally settled in 2006. He launched his eponymous line in 2009 and swiftly won the 1st edition of Who’s on Next/Uomo contest the year after at Pitti Uomo. In 2012 Umit Benan was chosen the best menswear brand in Japan. And between 2011/2013 Umit was the creative director of Trussardi designing mens, womens and accessories for the 1st line.
Umit Benan uses clothes to build personas, putting to good use the muti-culti life experiences accumulated in a chaotic city full of contrasts such as Istanbul or the mingling of different characters and cultures experienced in the dorms of boarding school. It’s these mixes and frictions that get him going. “I don’t like perfection” he states, having mastered the art of perfect imperfection. Street-casting, thereafter, becomes an essential tool: not as a show trick, however, but as an integral phase of the design process. When Umit finds the character who epitomizes the mood he has in mind for the season, he builds a whole fictional story around him, writing everything down in detail like the storyteller he is and finally getting down to the clothes.
Freedom of expression is Umit’s main goal in life and the reason he decided to be a fashion-maker. With each collection, he addresses issues that touch him personally, be it misconceptions around a beard, the ethos of outlaw artists who wander metropolitan streets at night or memories of a girlfriend who loved menswear.
Umit’s own brand of fashion-making might be charged with a narrative aura, but it’s the the clothes that really speak by themselves, oozing a quintessential masculinity. They are sophisticated, luxurious and sturdy: the wardrobe of choice of elegant men who get their hands dirty. Refined yet raw, the Umit Benan man is authentic, powerful, full of lively contrasts. Like life."
  )

manish = Designer.create!(
  brand:"Manish Arora",
  first_name: "Manish",
  last_name: "Arora",
  email: "manish@lalala.com",
  password: "123456",
  profile_picture: "https://martjackstorage.blob.core.windows.net/in-resources/bdc03b70-0e3c-44d5-a4d5-68c7fad6cbd6/Images/userimages/manisharora_logo.png",
  city: "New Delhi",
  age: "1997",
  detail: "Manish Arora is one of the most celebrated and inspiring contemporary designers in the fashion world today. He is known for his astute craftsmanship and unique play on colors, such as his trademark palette of pink and gold.
It was in 1997, that the world 1st viewed Manish's design aesthetic with the launch of his label 'Manish Arora'. With this he grew from strength to strength gaining a devoted following in the fashion world, which finally led to Manish exhibiting at the London Fashion Week in 2005. In 2007, Manish showcased for the 1st time in Paris Fashion Week. He became a member of the distinguished French Federation of Pret-a-Porter in 2009
Today, Manish sells his creations worldwide across prestigious stores such as Printemps, Joyce and Saks 5th Avenue. In 2011, Manish was appointed the Creative Director for Iconic French Fashion House 'Paco Robanne' where he designed two successful collections.
Manish Arora has been toasted across the Fashion world with Fashion spreads in International magazines such as V Magazine, Interview, Vogue, Elle, Harpers, L'officiel. He has also collaborated with eminent brands such as Walt Disney, Swarovski, Swatch, Reebok, Barbie, Monoprix, Nespresso, Nivea, MAC Cosmetics, Pommery, and Amrapali amongst others. His rich and colorful designs have been worn by international stars such as Rihanna, Lady Gaga, MIA and Katy Perry.
In 2014, the brand opened its 1 st flagship store in Paris. On 16th February 2016, Manish Arora was awarded the 'Chevalier de la Legion d'Honneur'."

  )

spring_2018 = Collection.create!(
  season: "Spring",
  year: 2018,
  detail: "Head designer's arrival gifts",
  designer: oscar
  )


fw_2018 = Collection.create!(
  season: "Spring",
  year: 2018,
  detail: "i once loved a woman who loves menswear fw 2018",
  designer: umit
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

# 290sqm = Retailer.create!(
#   first_name: "290sqm",
#   last_name: "Ido de Voos",
#   detail: "concept store in Istanbul with a branch in Zurich and Amsterdam",
#   email: "dido@290sqm.com",
#   password: "1222909",
#   profile_picture:"https://ist.290sqm.com/image/catalog/layout/logo_290sqm.png",
#   city: "Istanbul, Zurich",
#   age: 2010,
#   )

stranger = Retailer.create!(
  first_name: "Stranger",
  last_name: "owner is Owen",
  detail: "Stranger is a concept store inspired by the need to share our curiosities and interests with a wider audience. We offer clothing, coffee, tea, accessories and a co-working space for makers living in or passing through Lagos.
    We also have a brew bar, a shared working area, and a hangout space. Our main brands include Adeju Thompson, Palomino Blackwing, BLKKangaroo and many other local and global designers.",
  email: "iamastrange@stranger.com",
  password: "123456",
  profile_picture: "http://www.strangerlagos.com/content/images/2016/02/postimperial.jpg",
  city: "Lagos",
  age: 2013
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



jac_pants = Product.create!(
  name: "MULTICOLOR JACQUARD MORNING PANTS",
  detail: "55% Co - 42% Li - 2% Pl - 1% Pa",
  color: "Multicolor",
  sizes: [44,46,48,50,52],
  picture_1: "https://www.umitbenan.com/1672/multicolor-jacquard-tejano-bomber.jpg",
  picture_2: "https://www.umitbenan.com/1675/multicolor-jacquard-tejano-bomber.jpg",
  picture_3: "https://www.umitbenan.com/1674/multicolor-jacquard-tejano-bomber.jpg",
  picture_4: "https://www.umitbenan.com/1673/multicolor-jacquard-tejano-bomber.jpg",
  collection: fw_2018,
  designer: umit
  )

karate_pants = Product.create!(
  name: "KARATE KID TRENCH COAT",
  detail: "100% Wool",
  color: "Brown",
  sizes: [48,50],
  picture_1: "https://www.umitbenan.com/1845/kk-trench-coat.jpg",
  picture_2: "https://www.umitbenan.com/1650/kk-trench-coat.jpg",
  picture_3: "https://www.umitbenan.com/1847/kk-trench-coat.jpg",
  picture_4: "https://www.umitbenan.com/1849/kk-trench-coat.jpg",
  collection: fw_2018,
  designer: umit
  )

karate_inspired = Look.create!(
  name: "bosphoruson-the-way-home",
  detail: "the collection inspired by Umit's childhood in Istanbul",
  picture_1: "https://www.umitbenan.com/239/fisherman-look.jpg",
  picture_2: "https://www.umitbenan.com/240/fisherman-look.jpg",
  picture_3: "https://www.umitbenan.com/241/fisherman-look.jpg",
  picture_4: "https://www.umitbenan.com/19-bosphoruson-the-way-home",
  picture_5: "https://www.umitbenan.com/c/19-medium_default/bosphoruson-the-way-home.jpg",
  collection: fw_2018,
  designer: umit
  )

karatelook = LookProduct.create!(
  product: karate_pants,
  look: karate_inspired
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
