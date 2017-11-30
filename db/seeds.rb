# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating initial seed"
OrderProduct.destroy_all
Category.destroy_all
Designer.destroy_all
StoreCollection.destroy_all
Retailer.destroy_all
Product.destroy_all
Collection.destroy_all

Category.create!(
  [
    {title: "Womenswear"},
    {title: "Menswear"},
    {title: "Outerwear"},
    {title: "Footwear"},
    {title: "Active"},
    {title: "Hats"},
    {title: "Active"},
    {title: "Bags"},
    {title: "Beachwear"},
    {title: "Jewellery"},
    {title: "Eyewear"},
    {title: "Accessories"}
  ]
)

# ____LIMI____________________________________________

limi = Designer.create!(
  brand: "Limi Feu",
  city: "Tokyo",
  first_name: 'Limi',
  last_name: 'feu',
  email: "email@limi.feu",
  password: "123456",
  detail: "",
  age: 2000,
  profile_photo_url: "http://www.limifeu.com/images/collection/aw17/coll06.jpg")

# ____Kika____________________________________________

kika = Designer.create!(
  brand: "Kika Neumann",
  city: "Santiago",
  first_name: 'Kika',
  last_name: 'Neumann',
  email: "emailing@limi.feu",
  password: "123456",
  detail: "",
  age: 2001,
  profile_photo_url: "https://1.bp.blogspot.com/-B2UQkI2kDQo/WW1djNd_VYI/AAAAAAABq5Y/h4HxlSWsQkg-tHjS8-JPi8ZhXxqWm2nEQCLcBGAs/s1600/Kika-Neumann-abrigo-invierno2017.jpg")

#__________TS______________

thurs = Designer.create!(
  brand: "Thursday, Sunday",
  city: "Melbourne",
  detail: "",
  first_name: "X",
  last_name: "Y",
  email: "hahaha@designer.com",
  password: "123123",
  age: 2007,
  profile_photo_url: "http://www.thursdaysunday.com/wp-content/uploads/2016/08/SS17_4.jpg",
  )

# ____LANA____________________________________________

lana = Designer.create!(
  brand: "Lana Dumitru",
  city: "Bucharest",
  first_name: "Lana",
  last_name: "Dumitru",
  email:"lana@lana.com",
  password:"123456",
  age:2009,
  detail:"Lana Dumitru is a young Romanian fashion designer from Bucharest who has recently finished her research in London and earned her PhD in Arts and Fashion.
You can consider Lana an artist manifesting her beliefs through fashion as you would find Lana’s
 clothing in an art gallery or in a museum, rather than in a shop. Her original style comes from the fact that she designs all her visuals and patterns, transforming pure white fabrics into strong unique conceptual pieces through the means of digital printing.
She has been named the best young Romanian fashion designer of 2015 ( Forbes Award) and she was included by Forbes in Top 30 under 30.
Her work has been showcased at London Fashion Wee...",
  categories: [Category.find_by(title: "Womenswear")],
  profile_photo_url: "https://imgix.ttcdn.co/i/product/original/0/167334-6fd90fb8425e4e8f973c4b094aa5808b.jpeg?q=100&auto=format%2Ccompress&w=1000")

lana_col =  Collection.create!(
  season: "SS",
  year: "2018",
  detail: "HAPPY NATION",
  designer: lana)

Product.create!(
  name: "Artwearable",
  detail: "",
  color: "",
  sizes: "",
  picture_1: "https://imgix.ttcdn.co/i/product/original/0/167334-478e5afc48fd427cbc81bd22d87e2bfa.jpeg?q=100&auto=format%2Ccompress&w=1000",
  collection: lana_col ,
  designer: lana,
  price: 79
  )

Product.create!(
  name: "Artwearable",
  detail: "",
  color: "",
  sizes: "",
  picture_1: "https://imgix.ttcdn.co/i/product/original/0/167334-1e4d6209ffe3470099412bfb15cc66aa.jpeg?q=100&auto=format%2Ccompress&w=1000",
  collection: lana_col ,
  designer: lana,
  price: 79
  )

 Product.create!(
  name: "Artwearable",
  detail: "",
  color: "",
  sizes: "",
  picture_1: "https://imgix.ttcdn.co/i/product/original/0/167334-9ff2036974684ee69592f43d9dc624ea.jpeg?q=100&auto=format%2Ccompress&w=1000",
  collection: lana_col ,
  designer: lana,
  price: 79
  )

 Product.create!(
  name: "Artwearable",
  detail: "",
  color: "",
  sizes: "",
  picture_1: "https://imgix.ttcdn.co/i/product/original/0/167334-ac1104272cfd42bfa20a2697228c9fe1.jpeg?q=100&auto=format%2Ccompress&w=1000",
  collection: lana_col ,
  designer: lana,
  price: 79
  )

  Product.create!(
  name: "Artwearable",
  detail: "",
  color: "",
  sizes: "",
  picture_1: "https://imgix.ttcdn.co/i/product/original/0/167334-8adc4038521e4f7695342b2b3f9e9a8b.jpeg?q=100&auto=format%2Ccompress&w=1000",
  collection: lana_col ,
  designer: lana,
  price: 79
  )




# ____BSUITBARCA____________________________________________

thebodysuitofbarcelona = Designer.create!(
  brand: "The Bodysuit of Barcelona",
  first_name: "Berta",
  last_name: "Jarmón",
  email: "body@barcelona.com",
  password: '123456',
  profile_picture: "http://68.media.tumblr.com/af19fa7491391e5b6b730bfe05e00868/tumblr_ovraggvQUg1sl7ipso1_500.jpg",
  city: "Barcelona",
  age:2016,
  detail: "Created in 2016, the Bodysuit of Barcelona is a bodysuit and lifestyle brand based out of Barcelona.
  To highlight the women bodies with a simple yet powerful design, the Bodysuit of Barcelona creates timeless pieces with a feminine and Mediterranean aesthetic.",
  categories: [Category.find_by(title: "Womenswear")]
  )

thebodysuitofbarcelona.profile_photo_url = "http://68.media.tumblr.com/af19fa7491391e5b6b730bfe05e00868/tumblr_ovraggvQUg1sl7ipso1_500.jpg"

bodybarca = Collection.create!(
  season: "Second",
  year: 2018,
  detail: "Desert collection",
  designer: thebodysuitofbarcelona
)

bodybarca2 = Collection.create!(
  season: "First",
  year: 2018,
  detail: "Meadow collection",
  designer: thebodysuitofbarcelona
)

Product.create!(
  name: "THE SOPHIE BODYSUIT ARCTIC ICE ",
  detail: "Round neck and long sleeves bodysuit.
  Ribbed bodysuit made from premium soft Italian fabric.
  This color is exclusively customized in Italy for us.
  Snap closures.
  67% Italian Viscose 33% Elastane
  Made in Barcelona",
  color: "Peach Bloom",
  sizes: "small,medium,large",
  picture_1: "https://images.bigcartel.com/product_images/202724246/00410019.jpg?auto=format&fit=max&w=1500",
  picture_2: "https://images.bigcartel.com/product_images/202620818/BASICO+ARTIC2.jpg?auto=format&fit=max&w=1500",
  picture_3: "https://images.bigcartel.com/product_images/202749845/00410023.jpg?auto=format&fit=max&w=1500",
  collection: bodybarca2,
  designer: thebodysuitofbarcelona,
  price: 43
  )

Product.create!(
  name: "THE SOPHIE BODYSUIT PEACH BLOOM",
  detail: "Round neck and long sleeves bodysuit.
  Ribbed bodysuit made from premium soft Italian fabric.
  This color is exclusively customized in Italy for us.
  Snap closures.
  67% Italian Viscose 33% Elastane
  Made in Barcelona",
  color: "Peach Bloom",
  sizes: "small,medium,large",
  picture_1: "https://images.bigcartel.com/product_images/202722020/342.jpg?auto=format&fit=max&w=1500",
  picture_2: "https://images.bigcartel.com/product_images/202722050/00410023_nude.jpg?auto=format&fit=max&w=1500",
  collection: bodybarca2,
  designer: thebodysuitofbarcelona,
  price: 40
  )

Product.create!(
  name: "THE SOPHIE BODYSUIT WHITE",
  detail: "Round neck and long sleeves bodysuit.
  Ribbed bodysuit made from premium soft Italian fabric.
  This color is exclusively customized in Italy for us.
  Snap closures.
  67% Italian Viscose 33% Elastane
  Made in Barcelona",
  color: "White",
  sizes: "small,medium,large",
  picture_1: "https://images.bigcartel.com/product_images/202723817/00410021_blanco.jpg?auto=format&fit=max&w=1500",
  picture_2: "https://images.bigcartel.com/product_images/202723826/00370032.jpg?auto=format&fit=max&w=1500",
  collection: bodybarca2,
  designer: thebodysuitofbarcelona,
  price: 40
  )
Product.create!(
  name: "THE TENNIS BODYSUIT WHITE",
  detail: "Collared and three-quarter length sleeves bodysuit.
  Center front buttons.
  Ribbed bodysuit made from premium soft Italian fabric.
  Snap closures.
  67% Italian Viscose 33% Elastane
  Made in Barcelona",
  color: "White",
  sizes: "small,medium,large",
  picture_1: "https://images.bigcartel.com/product_images/202721372/00380007.jpg?auto=format&fit=max&w=1500",
  picture_2: "https://images.bigcartel.com/product_images/202621958/POLO+BLANCO+2.jpg?auto=format&fit=max&w=1500",
  picture_3: "https://images.bigcartel.com/product_images/202719821/00380015.jpg?auto=format&fit=max&w=1500",
  collection: bodybarca,
  designer: thebodysuitofbarcelona,
  price: 45
  )

Product.create!(
  name: "THE SOPHIE BODYSUIT BLACK",
  detail: "Round neck and long sleeves bodysuit.
  Ribbed bodysuit made from premium soft Italian fabric.
  Snap closures.
  67% Italian Viscose 33% Elastane
  Made in Barcelona",
  color: "Black",
  sizes: "small,medium,large",
  picture_1: "https://images.bigcartel.com/product_images/202721753/00370011.jpg?auto=format&fit=max&w=1500",
  picture_2: "https://images.bigcartel.com/product_images/202724813/00370009.jpg?auto=format&fit=max&w=1500",
  designer: thebodysuitofbarcelona,
  price: 39,
  collection: bodybarca2
  )

Product.create!(
  name: "THE COPPI BODYSUIT WHITE",
  detail: "Turtleneck and long sleeves bodysuit.
Ribbed bodysuit made from premium soft Italian fabric.
Snap closures.

67% Italian Viscose 33% Elastane

Made in Barcelona",
  color: "White",
  sizes: "small,medium,large",
  picture_1: "https://images.bigcartel.com/product_images/202723169/RWR.jpg?auto=format&fit=max&w=1500",
  picture_2: "https://images.bigcartel.com/product_images/202721177/00400027.jpg?auto=format&fit=max&w=1500",
  picture_3:"https://images.bigcartel.com/product_images/202628378/CISNE+BLANCO+4.jpg?auto=format&fit=max&w=1500",
  designer: thebodysuitofbarcelona,
  price: 39,
  collection: bodybarca
  )
# ____BASHAQUES__________________________________

manish = Designer.create!(
  categories: [Category.find_by(title: "Womenswear"), Category.find_by(title: "Accessories")],
  brand: "Manish Arora",
  first_name: "Manish",
  last_name: "Arora",
  email: " hello@bashaques.com",
  password: "123456",
  profile_picture:"https://martjackstorage.blob.core.windows.net/in-resources/bdc03b70-0e3c-44d5-a4d5-68c7fad6cbd6/Images/userimages/Portrait-Manish-Arora.jpg",
  city: "New Delhi",
  age: 2014,
  detail: "Manish Arora is one of the most celebrated and inspiring contemporary designers in the fashion world today. He is known for his astute craftsmanship and unique play on colors, such as his trademark palette of pink and gold.
It was in 1997, that the world 1st viewed Manish's design aesthetic with the launch of his label 'Manish Arora'. With this he grew from strength to strength gaining a devoted following in the fashion world, which finally led to Manish exhibiting at the London Fashion Week in 2005. In 2007, Manish showcased for the 1st time in Paris Fashion Week. He became a member of the distinguished French Federation of Pret-a-Porter in 2009
Today, Manish sells his creations worldwide across prestigious stores such as Printemps, Joyce and Saks 5th Avenue. In 2011, Manish was appointed the Creative Director for Iconic French Fashion House 'Paco Robanne' where he designed two successful collections. "
  )
manish.profile_photo_url = "https://martjackstorage.blob.core.windows.net/in-resources/bdc03b70-0e3c-44d5-a4d5-68c7fad6cbd6/Images/userimages/Portrait-Manish-Arora.jpg"

manish_col = Collection.create!(
  season: 'Summer',
  year:2018,
  detail: " BALLERINA'S HIDDEN DREAM",
  designer: manish
)

Product.create!(
  name: "BLUE TOKYO TOP",
  detail: " THICK 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "https://martjackstorage.blob.core.windows.net/in-resources/bdc03b70-0e3c-44d5-a4d5-68c7fad6cbd6/Images/userimages/SpringSummer2017/SpringSummer2017image37.jpg",
  collection: manish_col,
  designer: manish,
  price:  259
)
Product.create!(
  name: "BLUE TOKYO TOP",
  detail: " THICK 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "https://martjackstorage.blob.core.windows.net/in-resources/bdc03b70-0e3c-44d5-a4d5-68c7fad6cbd6/Images/userimages/SpringSummer2017/SpringSummer2017image14.jpg",
  collection: manish_col,
  designer: manish,
  price:  259
)
Product.create!(
  name: "BLUE TOKYO TOP",
  detail: " THICK 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "https://martjackstorage.blob.core.windows.net/in-resources/bdc03b70-0e3c-44d5-a4d5-68c7fad6cbd6/Images/userimages/SpringSummer2017/SpringSummer2017image33.jpg",
  collection: manish_col,
  designer: manish,
  price:  259
)


# ____RAD HOURANI_______________________________________

rad = Designer.create!(
  categories: [Category.find_by(title: "Womenswear"),Category.find_by(title: "Menswear"), Category.find_by(title: "Outerwear"), Category.find_by(title: "Accessories")],
  brand: "RAD HOURANI",
  first_name: "Rad",
  last_name: "Hourani",
  email: "hello@radhourani.com",
  password: "123456",
  profile_picture: "https://cdn.shopify.com/s/files/1/0035/7742/files/Flanelle_Magazine_RAD_HOURANI_02_WEB678.jpg?v=1509053442",
  city: "Montreal",
  age: 2014,
  detail:" 'STARTED CREATING WITH A SENSE OF CURIOSITY AND INNOCENCE DRIVEN BY MY 'NO-BACKGROUND'
   BACKGROUND. NO SCHOOL. NO TEACHERS. NO TELLY. NO BOUNDARIES. NO FORMATTING. I LIKE THE IDEA OF
   A WORLD THAT WE COULD LIVE AND SHAPE BY OURSELVES, ONLY BY OBSERVING. EACH OUR OWN. MY VISUALS
   HAVE ERUPTED FROM THIS WORLD OF MINE. THEY ARE GENDERLESS, AGELESS AND LIMITLESS. THEY COME FROM NO
   NATION, NO RACE, NO RELIGION, YET THEY COULD BE HOME ANYWHERE, ANYTIME. THEY EXUDE THE ESSENCE OF
   TIMELESS STYLE FOR ANTI-CONFORMIST INDIVIDUALS.' - Rad Hourani "
   )

rad.profile_photo_url = "https://cdn.shopify.com/s/files/1/0035/7742/files/Flanelle_Magazine_RAD_HOURANI_02_WEB678.jpg?v=1509053442"

rad_col = Collection.create!(
  season: 'All year collection 3',
  year:2018,
  detail: " geless raceless nationaless genderless limitless",
  designer: rad
)


Product.create!(
  name: "MAYANGA TOP",
  detail: "LIBAYA long cut out check top with bow detail - 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "https://cdn.kobisi.com/cdn/image/39/114759/3/470/470/white-jacket.jpg",
  collection: rad_col,
  designer: rad,
  price: 215
)




# ____BASHAQUES_________________________________________

bashaques = Designer.create!(
  categories: [Category.find_by(title: "Womenswear")],
  brand: "Bashaques",
  first_name: "Başak",
  last_name: "Cankeş",
  email: " hello@bashaquess.com",
  password: "123456",
  profile_picture:"https://cdn.kobisi.com/cdn/slider/167/2_1472025555/banner-32.jpg?v=1510646212",
  city: "Alaçatı",
  age: 2014,
  detail: "Başak Cankeş, the founder and lead designer of Bashaques’ followed her passion and studied
  fashion design at Fine Arts Department to create his own dream and build an inspiring future.
  By benefiting from her experiences with widely known fashion designers like Bora Aksu in United Kingdom,
  she discovered her talent in painting and pattern design. This inner discovery set a milestone in her
  career and motivated her to create a brand offering wearable art and inspire women with an artistic point of view. Başak Cankeş finds her inspiration in art,
   different cultures and travelling. She runs her first store in Alaçatı, where is so popular among intellectual scene and surfers in Turkey, and hosts various international designers brands, art shows and the collection with Bashaques’ label.
   Basak Cankes’ AW15/16 collection is awarded by Mediterranean
  Fashion Prize Committee in Marseille and Centre of Fashion Enterprise in United Kingdom in 2015."
  )

bashaques.profile_photo_url = "https://cdn.kobisi.com/cdn/slider/167/2_1472025555/banner-32.jpg?v=1510646212"


 summer = Collection.create!(
  season: 'Summer',
  year:2018,
  detail: "BALLERINA'S HIDDEN DREAM",
  designer: bashaques
)



Product.create!(
  name: "MAYANGA TOP",
  detail: "LIBAYA long cut out check top with bow detail - 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "https://cdn.kobisi.com/cdn/image/39/115091/3/470/470/hand-knitted-maxi-dress.jpg",
  collection: summer,
  designer: bashaques,
  price: 415
)

Product.create!(
  name: "MAYANGA TOP",
  detail: "LIBAYA long cut out check top with bow detail - 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "https://cdn.kobisi.com/cdn/image/39/114759/3/470/470/white-jacket.jpg",
  collection: summer,
  designer: bashaques,
  price: 215
)

Product.create!(
  name: "MAYANGA TOP",
  detail: "LIBAYA long cut out check top with bow detail - 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "https://cdn.kobisi.com/cdn/image/39/19214/30/470/470/dali-s-dream-jacket.jpg",
  collection: summer,
  designer: bashaques,
  price: 415
)

# ____ ROCKET X LUNCH___________________________________

rocket = Designer.create!(
  categories: [Category.find_by(title: "Womenswear"),Category.find_by(title: "Menswear")],
  brand: "Rocket X Lunch",
  first_name: "JINWON ",
  last_name: "WOO",
  email: "hello@rocket.com",
  password: "123456",
  profile_picture:"http://rocketxlunch.com/web/product/tiny/201709/3136_shop1_883602.jpg",
  city: "Seoul",
  age: 2012,
  detail: "ROCKET X LUNCH outstands by its color combinations and design per se, without its logo.
Launched 2010, ROCKET X LUNCHhas held 4 collections every year and been active domestically and internationally.
This brand displays humorous designs through mixing things and surpassing common expectations as its brand name is implying.
By doing so, ROCKET X LUNCHhas become a popular brand which is accepted as trendy and original with reasonable price among the young fashion influencers.
")

rocket.profile_photo_url = "http://rocketxlunch.com/web/product/tiny/201709/3136_shop1_883602.jpg"

rocket_col = Collection.create!(
  season: 'Winter',
  year:2018,
  detail: "LIBANDELI COLLECTION: INSPIRED BY A SPONTANEOUS,
  POWERFUL YET ROMANTIC AESTHETIC IN CAPE COAST OUR FIRST VISUAL STORY WAS BROUGHT TO LIFE.
Libandeli means 'beginning' in Lingala, referring to
the new beginning of a style story born in Africa.",
  designer: rocket
)


Product.create!(
  name: "MAYANGA TOP",
  detail: "LIBAYA long cut out check top with bow detail - 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "http://rocketxlunch.com/web/product/tiny/R-ST-VELVET-JP.jpg",
  collection: rocket_col,
  designer: rocket,
  price: 49
)

Product.create!(
  name: "R GRID CHECKPANTS",
  detail: "LIBAYA long cut out check top with bow detail - 100% cotton",
  color: "Black & White",
  sizes:"small,medium,large",
  picture_1: "http://rocketxlunch.com/web/product/tiny/201710/3223_shop1_439875.jpg",
  collection: rocket_col,
  designer: rocket,
  price: 89
)


Product.create!(
  name: "R SNAP VELVET MINI SKIRT",
  detail: "Velvet",
  color: "Blue",
  sizes:"small,medium,large",
  picture_1: "http://rocketxlunch.com/web/product/tiny/201710/3225_shop1_155662.jpg",
  collection: rocket_col,
  designer: rocket,
  price: 89
)

Product.create!(
  name: "MAYANGA TOP",
  detail: "LIBAYA long cut out check top with bow detail - 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "http://rocketxlunch.com/web/product/tiny/M)R-COLOR-KNIT-CARDIGAN.jpg",
  collection: rocket_col,
  designer: rocket,
  price: 49
)

Product.create!(
  name: "R BLACK",
  detail: "LIBAYA long cut out check top with bow detail - 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "http://rocketxlunch.com/web/product/tiny/M)R-ROUND-POINT-COAT.jpg",
  collection: rocket_col,
  designer: rocket,
  price: 49
)


Product.create!(
  name: "R BEIGE COAT",
  detail: "LIBAYA long cut out check top with bow detail - 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "http://rocketxlunch.com/web/product/tiny/201710/3214_shop1_616997.jpg",
  collection: rocket_col,
  designer: rocket,
  price: 139
)

Product.create!(
  name: "R BEIGE COAT",
  detail: "LIBAYA long cut out check top with bow detail - 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "http://rocketxlunch.com/web/product/tiny/201709/3092_shop1_351218.jpg",
  collection: rocket_col,
  designer: rocket,
  price: 139
)





# ____LIBAYA____________________________________________


libaya = Designer.create!(
  categories: [Category.find_by(title: "Womenswear")],
  brand: "Libaya",
  first_name: "Congo",
  last_name: "Lauren",
  email: "contact@shop-libaya.com",
  password: '123456',
  profile_picture: "https://static1.squarespace.com/static/57a492f14402439bb06d2c72/t/5958bd0146c3c49a050a26d2/1498987795266/Libaya+Campaign+OK15.jpeg?format=500w",
  city: "Nairobi",
  age: 2009,
  detail: "With a lot of passion, LIBAYA aims to present a variety of good quality
  African made ready-to-wear tops for the global style conscious woman.
  Deriving from the Bantu language, Lingala, which is mainly spoken in DR CONGO, LIBAYA means a
  “traditionally tailored women’s top”.LIBAYA feels empowered to contribute to a fair and
  developing fashion eco-system in West and Central Africa. Made with love for our Motherland,
  our brand thinks global, as we highly believe in celebrating the diversity of female beaut
  y that goes beyond borders.
  While combining inspiration from the past and present, the brand creates versatile,
  feminine and confident fashion that reflects the now and every woman will be proud wearing.
  A LIBAYA top is that one staple item in a woman's wardrobe, easing her daily style decisions."
)

libaya.profile_photo_url = "https://static1.squarespace.com/static/57a492f14402439bb06d2c72/t/5958bd0146c3c49a050a26d2/1498987795266/Libaya+Campaign+OK15.jpeg?format=500w"


lib_summer_18 = Collection.create!(
  season: 'Summer',
  year:2018,
  detail: "LIBANDELI COLLECTION: INSPIRED BY A SPONTANEOUS,
  POWERFUL YET ROMANTIC AESTHETIC IN CAPE COAST OUR FIRST VISUAL STORY WAS BROUGHT TO LIFE.
Libandeli means 'beginning' in Lingala, referring to
the new beginning of a style story born in Africa.",
  designer:libaya
)

Product.create!(
  name: "MAYANGA TOP",
  detail: "LIBAYA long cut out check top with bow detail - 100% cotton",
  color: "white & blue",
  sizes:"small,medium,large",
  picture_1: "https://static1.squarespace.com/static/57a492f14402439bb06d2c72/583b2961579fb36e9c992ae0/595778de86e6c022599611d7/1498904813791/DSC_6788.jpg?format=2500w",
  collection: lib_summer_18,
  designer: libaya,
  price: 30
)

Product.create!(
  name: "KALUNGA TOP",
  detail: "LIBAYA long cut out wrap top with collar - 100% cotton",
  color: "Light Green",
  sizes: "small,medium,large",
  picture_1: "https://static1.squarespace.com/static/57a492f14402439bb06d2c72/583b2961579fb36e9c992ae0/59578d90f7e0ab235521fe74/1498910103441/DSC_6793.jpg?format=2500w",
  collection: lib_summer_18,
  designer: libaya,
  price: 30
)

Product.create!(
  name: "BAYONGA TOP",
  detail: "LIBAYA exaggerated collar off-shoulder top with wide sleeves",
  color: "Light Blue & white",
  sizes: "small,medium,large",
  picture_1: "https://static1.squarespace.com/static/57a492f14402439bb06d2c72/583b2961579fb36e9c992ae0/59578e88099c01c37e6434b1/1498910357251/DSC_6804.jpg?format=2500w",
  collection: lib_summer_18,
  designer: libaya,
  price: 30
)

Product.create!(
  name: "ESENGO TOP",
  detail: "LIBAYA Top one shoulder with ruffle - 100% cotton",
  color: "Blue",
  sizes: "small,medium,large",
  picture_1: "https://static1.squarespace.com/static/57a492f14402439bb06d2c72/583b2961579fb36e9c992ae0/59578f2ce4fcb5e974b399a3/1498910515209/DSC_6760.jpg?format=2500w",
  collection: lib_summer_18,
  designer: libaya,
  price: 30
)
Product.create!(
  name: "ESENGO TOP",
  detail: "LIBAYA Top one shoulder with ruffle
 - 100% cotton",
  color: "White",
  sizes: "small,medium,large",
  picture_1: "https://static1.squarespace.com/static/57a492f14402439bb06d2c72/583b2961579fb36e9c992ae0/59578f83db29d6f52c78da43/1498910601886/DSC_6721.jpg?format=2500w",
  collection: lib_summer_18,
  designer: libaya,
  price: 30
)


Product.create!(
  name: "MPIA TOP",
  detail: "LIBAYA puff sleeve off-shoulder top - 100% cotton",
  color: "White",
  sizes: "small,medium,large",
  picture_1: "https://static1.squarespace.com/static/57a492f14402439bb06d2c72/583b2961579fb36e9c992ae0/5957931b414fb5261db274db/1498911523043/Libaya+Lookbook3.jpg?format=2500w",
  collection: lib_summer_18,
  designer: libaya,
  price: 29
)



Product.create!(
  name: "INDEKE TOP",
  detail: "LIBAYA bandeau black ruffle crop top - 100% cotton",
  color: "Black",
  sizes: "small,medium,large",
  picture_1: "https://static1.squarespace.com/static/57a492f14402439bb06d2c72/583b2961579fb36e9c992ae0/5957a6dbe58c62f43b46fe99/1498916606018/DSC_6822b.jpg?format=2500w",
  collection: lib_summer_18,
  designer: libaya,
  price: 20
)


Product.create!(
  name: "FUTURE T-SHIRT",
  detail:"LIBAYA The Future Is Female And African statement t-shirt.",
  color: "Black ",
  sizes: "small,medium,large",
  picture_1: "https://static1.squarespace.com/static/57a492f14402439bb06d2c72/583b2961579fb36e9c992ae0/595793716b8f5b8c45f65ee7/1498911608167/Libaya+Lookbook42.jpg?format=2500w",
  collection: lib_summer_18,
  designer: libaya,
  price: 30
)

Product.create!(
  name: "FUTURE T-SHIRT",
  detail:"LIBAYA The Future Is Female And African statement t-shirt.",
  color: "White",
  sizes: "small,medium,large",
  picture_1: "https://static1.squarespace.com/static/57a492f14402439bb06d2c72/583b2961579fb36e9c992ae0/595793b203596e47ed0b2eb1/1498911672579/Libaya+Lookbook43.jpg?format=2500w",
  collection: lib_summer_18,
  designer: libaya,
  price: 30
)

# ____VIKA____________________________________________

vika = Designer.create!(
  categories: [Category.find_by(title:"Womenswear"), Category.find_by(title:"Accessories")],
  brand: "Vika Gazinskaya",
  first_name: "Vika",
  last_name: "Gazinskaya",
  email:"vika@vika.com",
  password: "123456",
  profile_photo_url: "https://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=220687197",
  city: "Moscow",
  age: 2007,
  detail: " Vika Gazinskaya collections are internationally renowned and rooted in the highly personal aesthetics of its creator.
Vika was born and raised in Moscow, Russia.
During her time studying fashion design, she won a contest awarding her an internship at L'Officiel Russia, where she developed a deep knowledge of the fashion industry.
After interning for a year, she was hired as a fashion editor and continued to work while finishing her studies.
Vika then briefly worked as a freelancer, before debuting her eponymous ready-to-wear collection in 2007.
In March 2010, Vika Gazinskaya presented her collection in Paris for the first time, attracting a more international audience.
In July 2010, Vika was invited to create a window display for Parisian boutique Colette during Haute Couture fashion week. In 2012, Vika was one of six finalists for the coveted ANDAM award.
In 2014 Vika was one of the finalist of generous LVMH Prize...")


# ____ARM____________________________________________

arm = Designer.create!(
  categories: [Category.find_by(title: "Accessories")],
  brand:"Armature",
  first_name: "James",
  last_name: "Johnson",
  email: "hello@armature.com",
  password: "123456",
  profile_photo_url: "https://cdn.shopify.com/s/files/1/1062/9358/products/Barbed-Wire-Ear-Cuff-Lookbook_1024x1024.jpg?v=1506200670",
  age:2015,
  city: "Los Angeles",
  detail: "Armature creates provocative pieces for women and men. ARMATURE officially launched in 2015 in Los Angeles, California by Founder, Designer and Creative Director, Sara Angelucci.
Sara draws inspiration from the obscure producing unique fashion stories and designs that provoke emotion and thought, while bridging the gap between fashion and art.
Armature designs are sought after by hollywood celebrities, socialites, fashion influencers and style trendsetters. Worn by the personalities of Ruby Rose, Sofia Richie, Rosie Huntington-Whitely, Carmen Electra, Karrueche Tran, Alison Sudol and others.
Armature has been featured in major fashion publications such as Luomo Vogue, Nylon and C magazine as well as art driven magazines like VVV, Rogue and Hashtag magazine. Featured in a nation wide Urban Decay campaign and more.
Sara was trained by Kate and Laura mulleavy of Rodarte from 2007-2010."
  )

# ____DEZIGNERS_______________________________________

mex = Designer.create!(
  categories:[Category.find_by(title: "Womenswear")],
  first_name:"Barbara",
  last_name:"Sanchez-Kane",
  brand: "Sanchez-Kane",
  email:"music@designer.com",
  password: "123456",
  city:"Mexico City",
  age:2008,
  detail:"",
  profile_photo_url: "http://cdn.vogue.mx/uploads/images/thumbs/mx/vog/2/s/2016/41/entrevista_a_barbara_disenadora_de_sanchez_kane_3592_490x.jpg")

mex = Designer.create!(
  categories:[Category.find_by(title: "Womenswear")],
  first_name:"Rosie",
  last_name:"Assoulin",
  brand: "Rosie Assoulin",
  email:"solomon@designer.com",
  password: "123456",
  city:"New York",
  age:2008,
  detail: "Eloquent & Timeless",
  profile_photo_url: "http://www.badueh.com/wp-content/uploads/2017/04/Rosie.jpg")

mex = Designer.create!(
  categories:[Category.find_by(title: "Accessories")],
  first_name:"Jida",
  last_name:"Hull",
  brand: "Freedom of Movement",
  email:"fusion@designer.com",
  password: "123456",
  city:"Cape Town",
  age: 2008,
  detail: "",
  profile_photo_url: "http://csa.global/sites/default/files/Freedom%20of%20movement%20FOM%20CSA%20The%20Wire%201.jpg")

mex = Designer.create!(
  categories:[Category.find_by(title: "Womenswear")],
  first_name:"House of",
  last_name:"Eden",
  brand: "House of Eden",
  email:"karate@designer.com",
  password: "123456",
  city:"Addis Ababa",
  age:2008,
  detail:"",
  profile_photo_url: "https://static.wixstatic.com/media/ea4a9a_1385a1b0d4ec46f3977eaff25046971a~mv2_d_3881_5822_s_4_2.jpg/v1/crop/w_250,h_445,x_11,y_0,scl_0.08,q_90,usm_4.80_0.48_0.00/ea4a9a_1385a1b0d4ec46f3977eaff25046971a~mv2_d_3881_5822_s_4_2.jpg")

mex = Designer.create!(
  categories:[Category.find_by(title: "Womenswear")],
  first_name:"H",
  last_name:"H",
  brand: "Ioanna Kourbela",
  email:"soledad@designer.com",
  password: "123456",
  city:"Athens",
  age:2008,
  detail:"",
  profile_photo_url: "https://i.pinimg.com/736x/db/e1/93/dbe193aebbc26e7b40eb6188133acc41--athens-fashion-designer.jpg")

mex = Designer.create!(
  categories:[Category.find_by(title: "Accessories")],
  first_name:"Sarah",
  last_name:"Beydoun",
  brand: "Sarah's Bag",
  email:"jihad@designer.com",
  password: "123456",
  city:"Beirut",
  age:2008,
  detail:"",
  profile_photo_url: "https://shop.sarahsbag.com/corporate3/images/9309/carrousel-2-psychedelia.jpg?width=298")

mex = Designer.create!(
  categories:[Category.find_by(title: "Accessories")],
  first_name:"Nathalie",
  last_name:"Trad",
  brand: "Nathalie Trad",
  email:"hellogirl@designer.com",
  password: "123456",
  city:"Dubai",
  age:2008,
  detail:"BORN IN BEIRUT AND RAISED IN DUBAI, NATHALIE TRAD DEVELOPED A STRONG PENCHANT FOR ASYMMETRIC DESIGNS – WHICH TODAY FORMS THE BASIS OF HER EPONYMOUS LINE – WHILST EARNING A BA FROM PARIS’ ESMOD INTERNATIONAL. IT WAS THEN, IN 2007, THAT SHE DISCOVERED HER PERSONAL DESIGN ETHOS: TO TAKE CLASSIC SHAPES – UBIQUITOUS IN OUR NATURAL ENVIRONMENT – AND RADICALLY TRANSFORM THEM, DECONSTRUCTING AND REDEFINING THE BOUNDARIES OF FASHION AESTHETICS.

IN 2008, TRAD RELOCATED TO NEW YORK TO FURTHER PURSUE THIS VISION. THERE, ...",
  profile_photo_url: "http://www4.pictures.zimbio.com/gi/Nathalie+Trad+Presentation+Spring+2016+New+oAGps1Mce4Vl.jpg")

mex = Designer.create!(
  categories:[Category.find_by(title: "Womenswear")],
  first_name:"Jida",
  last_name:"Hull",
  brand: "Illustrated People",
  email:"helloboy@designer.com",
  password: "123456",
  city:"London",
  age:2008,
  detail:"",
  profile_photo_url: "https://www.illustratedpeople.com/images/velour-sports-tracksuit-bottoms-p178-477_medium.jpg"
  )

mex = Designer.create!(
  categories:[Category.find_by(title: "Womenswear")],
  first_name:"Tufi",
  last_name:"Duek",
  brand: "Tufi Duek",
  email:"himynames@designer.com",
  password: "123456",
  city:"Rio de Janeiro",
  age:2008,
  detail:"",
  profile_photo_url: "https://www.fashiongonerogue.com/wp-content/uploads/2013/07/isabeli-tufi-duek-ad1.jpg"
  )

ex = Designer.create!(
  categories:[Category.find_by(title: "Womenswear")],
  first_name:"Henry",
  last_name:"Lau",
  brand: "Henry Lau",
  email:"himyndames@designer.com",
  password: "123456",
  city:"Hong Kong",
  age:2008,
  detail:"",
  profile_photo_url: "https://pbs.twimg.com/media/DPenw3SUQAAHUY7.jpg"
  )

ex = Designer.create!(
  categories:[Category.find_by(title: "Womenswear")],
  first_name:"Angel",
  last_name:"Chen",
  brand: "Angel Chen",
  email:"himynsames@designer.com",
  password: "123456",
  city:"Shanghai",
  age:2008,
  detail:"Angel Chen was first introduced by Dongliang and sponsored by Sony in October 2014. Through SS15 catwalk entitled “The Rite of Spring”; orders from renowned LA retailer H.Lorenzo swiftly followed! The label’s AW15 collection won Fashion Scout’s “Ones to Watch” Award and was presented during London Fashion Week. In May 2015, Angel Chen created a capsule SS16 collection “Youthquake” for H.Lorenzo’s window display. Meanwhile, Angel Chen has received orders from prestigious stockists worldwide including Lane Crawford, IT and Urban Outfitters, and collaborated with Swarovski, Airbnb, Kiehl’s and Sony. Now London and Shanghai-based Angel Chen aims to continue using bright colours and mix materials to create an innocent, free-spirited and quirky character for creative people.",
  profile_photo_url: "http://angelchenstudio.com/wp-content/uploads/2016/09/AngelChen004-1.jpg"
  )

ex = Designer.create!(
  categories:[Category.find_by(title: "Womenswear")],
  first_name:"Jida",
  last_name:"Hull",
  brand: "Play Clan",
  email:"himynssames@designer.com",
  password: "123456",
  city:"Mumbai",
  age:2008,
  detail:"",
  profile_photo_url: "http://static.wixstatic.com/media/4a6ad3_7e1f9e9270f543198f4ba063cf40920c.jpg"
  )


# ____UMIT____________________________________________


umit = Designer.create!(
  categories: [Category.find_by(title: "Menswear"), Category.find_by(title: "Footwear")],
  brand: "Umit Benan",
  first_name: "Umit",
  last_name: "Benan",
  email: "umithimself@benan.common",
  password: "123456",
  profile_picture: "https://www.umitbenan.com/themes/default-bootstrap/img/2.jpg",
  city: "Milan",
  age: 2009,
  detail: "Umit Benan wanted to be a filmmaker, but diverted to fashion rather naturally,
  keeping the urge to tell stories intact. He makes no real distinction between life, fantasy and
  fiction because really there isn’t one. “I am interested in contrasts. That’s what life is all about, isn’t it?” he says.
  His clothes – real, bold, imaginative – follow suit.
Aesthetic imprinting leaves an indelible mark on fertile minds.
Umit Benan was born to Turkish parents in Germany in 1980, and raised in Istanbul.
As a kid in the 80s, he was bombarded with the assertive fashions and
powerful masculine visions of the time, thanks to his clothing manufacturer father. As a teen in the 90s, he abs...")

umit.profile_photo_url = "https://www.umitbenan.com/c/23-medium_default/art-by-night.jpg"

fw_2018 = Collection.create!(
  season: "Fall",
  year: 2018,
  detail: "i once loved a woman who loves menswear fw 2018",
  designer: umit
  )

ss_2018 = Collection.create!(
  season: "Spring",
  year: 2018,
  detail: "i once loved a woman who loves menswear fw 2018",
  designer: umit
  )

sum_18_2 = Collection.create!(
  season: "Summer 2",
  year: 2018,
  detail: "inspired by heat and sweat",
  designer: umit
  )

sum_18_1 = Collection.create!(
  season: "Summer 1",
  year: 2018,
  detail: "she loved freedom so I did too",
  designer: umit
  )

  Product.create!(
  name: "TABACCO COTTON MARFA SUIT",
  detail: "Single Breasted Sartorial Jacket. Two Pleated Classic Pants.
42% Md - 39% Li - 19% Co;",
  color: "Tobacco",
  sizes: "44,46,48",
  picture_1: "https://www.umitbenan.com/975/tabacco-cotton-marfa-suit.jpg",
  picture_2: "https://www.umitbenan.com/976/tabacco-cotton-marfa-suit.jpg",
  picture_3: "https://www.umitbenan.com/1057/tabacco-cotton-marfa-suit.jpg",
  picture_4: "https://www.umitbenan.com/1588/tabacco-cotton-marfa-suit.jpg",
  collection: sum_18_1,
  designer: umit,
  price: 600
  )
Product.create!(
  name: "SALMON LINEN HECTOR SUIT",
  detail: "Single Breasted Sartorial Jacket. Two Pleated Classic Pants. 100% Linen;",
  color: "Salmon",
  sizes: "44,46,48",
  picture_1: "https://www.umitbenan.com/978/salmon-linen-hector-suit.jpg",
  picture_2: "https://www.umitbenan.com/979/salmon-linen-hector-suit.jpg",
  picture_3: "https://www.umitbenan.com/1059/salmon-linen-hector-suit.jpg",
  picture_4: "https://www.umitbenan.com/1593/salmon-linen-hector-suit.jpg",
  collection: sum_18_1,
  designer: umit,
  price: 600
  )


  Product.create!(
  name: "KIMONO",
  detail: "Kimono with one patch pocket;
grois-grain band side closure;
multi stitched hems and UMIT BENAN logo label. 100% cotton piquet shirting;",
  color: "White",
  sizes: "48,50",
  picture_1: "https://www.umitbenan.com/2103/kimono.jpg",
  collection: fw_2018,
  designer: umit,
  price: 200
  )



  Product.create!(
  name: "KIMONO",
  detail: "Kimono with one patch pocket;
grois-grain band side closure;
multi stitched hems and UMIT BENAN logo label; 100% wool coating",
  color: "Navy",
  sizes: "48,50",
  picture_1: "https://www.umitbenan.com/2160/kimono.jpg",
  collection: fw_2018,
  designer: umit,
  price: 150
  )


   Product.create!(
  name: "KIMONO",
  detail: "Kimono with one patch pocket;
grois-grain band side closure;
multi stitched hems and umit benan logo label. 100% British mohair;",
  color: "Navy stripes",
  sizes: "48,50",
  picture_1: "https://www.umitbenan.com/2206/kimono.jpg",
  collection: fw_2018,
  designer: umit,
  price: 150
  )

  Product.create!(
  name: "TRENCHCOAT",
  detail: "Double breasted herringbone wool trench coat
with frontal and back western carre;
horn buckle belt;
inner belt in contrast velvet;
tuxedo cuff detail. 100% virgin wool",
  color: "Dark green",
  sizes: "48,50,52",
  picture_1: "https://www.umitbenan.com/2110/trench-coat.jpg",
  collection: fw_2018,
  designer: umit,
  price: 700
  )

  Product.create!(
  name: "RAINCOAT",
  detail: "Double breasted water proof cotton raincoat with velvet lapel;
wide side welt pockets. 100% water proof cotton",
  color: "Orange",
  sizes: "48,50,52",
  picture_1: "https://www.umitbenan.com/2139/raincoat.jpg",
  collection: fw_2018,
  designer: umit,
  price: 150
  )

  Product.create!(
  name: "WHITE LINEN HECTOR SUIT",
  detail: "Single Breasted Sartorial Jacket. Two Pleated Classic Pants. 100% Linen;",
  color: "White",
  sizes: "44,46,48",
  picture_1: "https://www.umitbenan.com/980/white-linen-hector-suit.jpg",
  picture_2: "https://www.umitbenan.com/981/white-linen-hector-suit.jpg",
  picture_3: "https://www.umitbenan.com/1058/white-linen-hector-suit.jpg",
  picture_4: "https://www.umitbenan.com/1587/salmon-linen-hector-suit.jpg",
  collection: sum_18_1,
  designer: umit,
  price: 600
  )

  Product.create!(
  name: "MULTICOLOR JACQUARD MORNING PANTS",
  detail: "55% Co - 42% Li - 2% Pl - 1% Pa",
  color: "Multicolor",
  sizes: "44,46,48,50,52",
  picture_1: "https://www.umitbenan.com/1672/multicolor-jacquard-tejano-bomber.jpg",
  picture_2: "https://www.umitbenan.com/1675/multicolor-jacquard-tejano-bomber.jpg",
  picture_3: "https://www.umitbenan.com/1674/multicolor-jacquard-tejano-bomber.jpg",
  picture_4: "https://www.umitbenan.com/1673/multicolor-jacquard-tejano-bomber.jpg",
  collection: fw_2018,
  designer: umit,
  price: 91
  )

 Product.create!(
  name: "KARATE KID TRENCH COAT",
  detail: "100% Wool",
  color: "Navy",
  sizes: "44,46,48",
  picture_1: "https://www.umitbenan.com/1841/kk-trench-coat.jpg",
  picture_2: "https://www.umitbenan.com/1843/kk-trench-coat.jpg",
  picture_3: "https://www.umitbenan.com/1844/kk-trench-coat.jpg",
  picture_4: "https://www.umitbenan.com/1842/kk-trench-coat.jpg",
  collection: fw_2018,
  designer: umit,
  price: 91
  )

  Product.create!(
  name: "KARATE KID TRENCH COAT",
  detail: "100% Wool",
  color: "Brown",
  sizes: "48,50",
  picture_1: "https://www.umitbenan.com/1845/kk-trench-coat.jpg",
  picture_2: "https://www.umitbenan.com/1650/kk-trench-coat.jpg",
  picture_3: "https://www.umitbenan.com/1847/kk-trench-coat.jpg",
  picture_4: "https://www.umitbenan.com/1849/kk-trench-coat.jpg",
  collection: fw_2018,
  designer: umit,
  price: 91
  )


  Product.create!(
  name: "HOODIE SHEARLING COAT",
  detail: "100% Sheraling",
  color: "Blue",
  sizes: "44,46,48,50",
  picture_1: "https://www.umitbenan.com/1900/hoodie-shearling-coat.jpg",
  picture_2: "https://www.umitbenan.com/1899/hoodie-shearling-coat.jpg",
  picture_3: "https://www.umitbenan.com/1901/hoodie-shearling-coat.jpg",
  picture_4: "https://www.umitbenan.com/1903/hoodie-shearling-coat.jpg",
  collection: fw_2018,
  designer: umit,
  price: 1800
  )

   Product.create!(
  name: "HOODIE SHEARLING COAT",
  detail: "100% Sheraling",
  color: "Brown",
  sizes: "44,46,48,50",
  picture_1: "https://www.umitbenan.com/1904/hoodie-shearling-coat.jpg",
  picture_2: "https://www.umitbenan.com/1905/hoodie-shearling-coat.jpg",
  picture_3: "https://www.umitbenan.com/1907/hoodie-shearling-coat.jpg",
  picture_4: "https://www.umitbenan.com/1908/hoodie-shearling-coat.jpg",
  collection: fw_2018,
  designer: umit,
  price: 1800
  )


   Product.create!(
  name: "HOODIE SHEARLING COAT",
  detail: "100% Sheraling",
  color: "Brown",
  sizes: "44,46,48,50",
  picture_1: "https://www.umitbenan.com/1895/hoodie-shearling-coat.jpg",
  collection: fw_2018,
  designer: umit,
  price: 1800
  )

    Product.create!(
  name: "BOMBER with LEATHER SLEEVES",
  detail: "Wool with  Leather Sleeves",
  color: "Red / Dark Brown",
  sizes: "46,48,50",
  picture_1: "https://www.umitbenan.com/1835/kk-bomber-with-leather-sleeves.jpg",
  collection: fw_2018,
  designer: umit,
  price: 700
  )

  Product.create!(
  name: "BOMBER with LEATHER SLEEVES",
  detail: "Wool with  Leather Sleeves",
  color: "Black / Navy",
  sizes: "46,48,50",
  picture_1: "https://www.umitbenan.com/1973/kk-bomber-with-leather-sleeves.jpg",
  collection: fw_2018,
  designer: umit,
  price: 700
  )

  Product.create!(
  name: "LEATHER HOODIE SCOTT JACKET",
  detail: "100% Cow Leather Coppied with Diagonal Cotton Beige",
  color: "Camel",
  sizes: "44,46,48",
  picture_1: "https://www.umitbenan.com/1931/scott-leather-jacket.jpg",
  collection: fw_2018,
  designer: umit,
  price: 900
  )

   Product.create!(
  name: "HOODIE SHEARLING COAT",
  detail: "100% Sheraling",
  color: "Blue",
  sizes: "44,46,48,50",
  picture_1: "https://www.umitbenan.com/1900/hoodie-shearling-coat.jpg",
  picture_2: "https://www.umitbenan.com/1899/hoodie-shearling-coat.jpg",
  picture_3: "https://www.umitbenan.com/1901/hoodie-shearling-coat.jpg",
  picture_4: "https://www.umitbenan.com/1903/hoodie-shearling-coat.jpg",
  collection: fw_2018,
  designer: umit,
  price: 1800
  )

   Product.create!(
  name: "HOODIE SHEARLING COAT",
  detail: "100% Sheraling",
  color: "Brown",
  sizes: "44,46,48,50",
  picture_1: "https://www.umitbenan.com/1904/hoodie-shearling-coat.jpg",
  picture_2: "https://www.umitbenan.com/1905/hoodie-shearling-coat.jpg",
  picture_3: "https://www.umitbenan.com/1907/hoodie-shearling-coat.jpg",
  picture_4: "https://www.umitbenan.com/1908/hoodie-shearling-coat.jpg",
  collection: fw_2018,
  designer: umit,
  price: 1800
  )


   Product.create!(
  name: "HOODIE SHEARLING COAT",
  detail: "100% Sheraling",
  color: "Brown",
  sizes: "44,46,48,50",
  picture_1: "https://www.umitbenan.com/1895/hoodie-shearling-coat.jpg",
  collection: fw_2018,
  designer: umit,
  price: 1800
  )

  Product.create!(
  name: "SHERPA JEANS JACKET",
  detail: "Denim - 100% Cotton with Faux Fur Lining; ",
  color: "Optical White",
  sizes: "44,46,48",
  picture_1: "https://www.umitbenan.com/1893/sherpa-jeans-jacket.jpg",
  collection: fw_2018,
  designer: umit,
  price: 149
  )


  Product.create!(
  name: "TEJANO EMBROIDERY JEANS JACKET",
  detail: "100% Cotton; 100% Suede Yoke;",
  color: "Blue Denim",
  sizes: "46,48",
  picture_1: "https://www.umitbenan.com/998/tejano-embroidery-jeans-jacket.jpg",
  collection: fw_2018,
  designer: umit,
  price: 150
  )

  Product.create!(
  name: "TEJANO EMBROIDERY JEANS JACKET",
  detail: "100% Cotton; 100% Suede Yoke;",
  color: "White Denim",
  sizes: "46,48",
  picture_1: "https://www.umitbenan.com/994/tejano-embroidery-jeans-jacket.jpg",
  collection: fw_2018,
  designer: umit,
  price: 150
  )


  Product.create!(
  name: "DENIM STRIPES DOUBLE BREASTED SANCHEETO JACKET",
  detail: "Double Breasted Sartorial Jacket; 100% Delavè Linen ",
  color: "Blue Denim",
  sizes: "46,48,50",
  picture_1: "https://www.umitbenan.com/987/denim-stripes-double-breasted-sancheeto-jacket.jpg",
  collection: fw_2018,
  designer: umit,
  price: 200
  )



stranger = Retailer.create!(
  first_name: "Stranger",
  last_name: "owner is Owen",
  detail: "Stranger is a concept store inspired by the need to share our curiosities and interests with a wider audience. We offer clothing, coffee, tea, accessories and a co-working space for makers living in or passing through Lagos.
    We also have a brew bar, a shared working area, and a hangout space. Our main brands include Adeju Thompson, Palomino Blackwing, BLKKangaroo and many other local and global designers.",
  email: "iamastrange@stranger.com",
  password: "123456",
  profile_picture: "https://scontent-ams3-1.cdninstagram.com/t51.2885-19/11909966_844899168921121_248401732_a.jpg",
  city: "Lagos",
  age: 2013
)


sc = StoreCollection.create!(
  season: "Spring",
  year: 2018,
  details: "Womenswear plan for next quarter",
  retailer: stranger,
  )



designerorder = DesignerOrder.create!(
  total_quote: 10.203,
  order_requested: true,
  order_confirmed: false,
  store_collection: sc,
  )

puts "done!"
