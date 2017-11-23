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
    {title: "Footwear"},
    {title: "Active"},
    {title: "Hats"},
    {title: "Active"},
    {title: "Bags"},
    {title: "Beachwear"},
    {title: "Jewellery"}
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
