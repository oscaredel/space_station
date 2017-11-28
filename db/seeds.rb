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
  season: "2018 1",
  year: 2018,
  detail: "Desert collection",
  designer: thebodysuitofbarcelona
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
  collection: bodybarca,
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
  collection: bodybarca,
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

umit.profile_photo_url = "https://www.umitbenan.com/themes/default-bootstrap/img/2.jpg"

fw_2018 = Collection.create!(
  season: "Spring",
  year: 2018,
  detail: "i once loved a woman who loves menswear fw 2018",
  designer: umit
  )

ss_2018 = Collection.create!(
  season: "Fall",
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

linen_suit_3 = Product.create!(
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

  linen_suit_3 = Product.create!(
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

  linen_suit_3 = Product.create!(
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

jac_pants = Product.create!(
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

karate_kid_trench_two = Product.create!(
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

karate_pants = Product.create!(
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



two_hundred_ninety_sqm = Retailer.create!(
  first_name: "290sqm",
  last_name: "Ido de Voos",
  detail: "concept store in Istanbul with a branch in Zurich and Amsterdam",
  email: "dido@290sqm.com",
  password: "1222909",
  profile_picture:"https://ist.290sqm.com/image/catalog/layout/logo_290sqm.png",
  city: "Istanbul, Zurich",
  age: 2010,
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
