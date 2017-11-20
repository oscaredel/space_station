# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating initial seed"
OrderProduct.destroy_all
Designer.destroy_all
Retailer.destroy_all
Product.destroy_all
Collection.destroy_all


# ____RALPH LAUREN____________________________________________

ralph = Designer.create!(
  brand: "Ralph Lauren",
  first_name: "Ralph",
  last_name: "Lauren",
  email: "ralph@lauren.com",
  password: '123456',
  profile_picture: "https://www.hellomagazine.com/imagenes//fashion/201211069968/ralph-lauren-rags-to-riches/0-50-97/ralph-face--z.jpg",
  city: "London",
  age: 71,
  detail: "Drawing on his interests in sports, Ralph Lauren named his first full line of menswear ‘Polo' in 1968. He worked out of a single drawer from a showroom in the Empire State Building and made deliveries to stores himself.[13] By 1969, the Manhattan department store Bloomingdale's sold Lauren's men line exclusively. It was the first time that Bloomingdale's had given a designer their own in-store boutique."
)

rl_fw_2018 = Collection.create!(
  season: "Fall/Winter",
  year: 2018,
  detail: "This is designed for the outdoor human",
  designer: ralph
)

Product.create!(
  name: "SLIM FIT - Basic T-shirt - black mask",
  detail: "Custom Slim Fit: Polo Ralph Lauren's trimmest silhouette. Slightly fitted through the chest and the waist.",
  color: "green",
  sizes: [44,46,48,50,52],
  picture_1: "https://mosaic01.ztat.net/vgs/media/pdp-gallery/PO/22/2O/03/FQ/11/PO222O03F-Q11@8.jpg",
  picture_2: "https://mosaic02.ztat.net/vgs/media/pdp-zoom/PO/22/2O/03/FQ/11/PO222O03F-Q11@7.jpg",
  picture_3: "https://mosaic01.ztat.net/vgs/media/pdp-zoom/PO/22/2O/03/FQ/11/PO222O03F-Q11@3.jpg",
  picture_4: "https://mosaic02.ztat.net/vgs/media/pdp-zoom/PO/22/2O/03/FQ/11/PO222O03F-Q11@6.jpg",
  collection: rl_fw_2018,
  designer: ralph,
  price: 30
)

Product.create!(
  name: "Tracksuit bottoms - cruise navy",
  detail: "Outer fabric material:86 cotton, 14 polyester. Fabric:Sweat. Washing instructions:Machine wash at 40°C",
  color: "blue",
  sizes: [44,46,48,50,52],
  picture_1: "https://mosaic01.ztat.net/vgs/media/pdp-zoom/PO/22/2E/01/OK/11/PO222E01O-K11@8.jpg",
  picture_2: "https://mosaic02.ztat.net/vgs/media/pdp-zoom/PO/22/2E/01/OK/11/PO222E01O-K11@7.jpg",
  picture_3: "https://mosaic02.ztat.net/vgs/media/pdp-zoom/PO/22/2E/01/OK/11/PO222E01O-K11@6.jpg",
  picture_4: "https://mosaic01.ztat.net/vgs/media/pdp-zoom/PO/22/2E/01/OK/11/PO222E01O-K11@10.jpg",
  collection: rl_fw_2018,
  designer: ralph,
  price: 91
)

Product.create!(
  name: "SPORT SLIM FIT - Shirt - silver smoke",
  detail: "Outer fabric material:100 cotton. Washing instructions:Machine wash at 40°C",
  color: "grey",
  sizes: [44,46,48,50,52],
  picture_1: "https://mosaic01.ztat.net/vgs/media/pdp-zoom/PO/22/2D/0B/JD/11/PO222D0BJ-D11@10.jpg",
  picture_2: "https://mosaic02.ztat.net/vgs/media/pdp-zoom/PO/22/2D/0B/JD/11/PO222D0BJ-D11@9.jpg",
  picture_3: "https://mosaic02.ztat.net/vgs/media/pdp-zoom/PO/22/2D/0B/JD/11/PO222D0BJ-D11@8.jpg",
  picture_4: "https://mosaic01.ztat.net/vgs/media/pdp-zoom/PO/22/2D/0B/JD/11/PO222D0BJ-D11@7.jpg",
  collection: rl_fw_2018,
  designer: ralph,
  price: 40
)

Product.create!(
  name: "JULIANNA - Jumper - dark blue",
  detail: "Outer fabric material:100 cotton. Washing instructions:Hand wash only, Dry cleanable",
  color: "blue",
  sizes: [44,46,48,50,52],
  picture_1: "https://mosaic01.ztat.net/vgs/media/pdp-zoom/PO/22/1I/01/9K/14/PO221I019-K14@8.jpg",
  picture_2: "https://mosaic02.ztat.net/vgs/media/pdp-zoom/PO/22/1I/01/9K/14/PO221I019-K14@7.jpg",
  picture_3: "https://mosaic01.ztat.net/vgs/media/pdp-zoom/PO/22/1I/01/9K/14/PO221I019-K14@9.jpg",
  picture_4: "https://mosaic02.ztat.net/vgs/media/pdp-gallery/PO/22/1I/01/9K/14/PO221I019-K14@6.jpg",
  collection: rl_fw_2018,
  designer: ralph,
 price: 17.6
)

Product.create!(
  name: "CLAIRE - Handbag - bourbon",
  detail: "Outer material:Faux leather. Fabric:Synthetic leather",
  color: "bruin",
  sizes: [44,46,48,50,52],
  picture_1: "https://mosaic01.ztat.net/vgs/media/pdp-gallery/L4/25/1P/00/1O/11/L4251P001-O11@10.jpg",
  picture_2: "https://mosaic02.ztat.net/vgs/media/pdp-zoom/L4/25/1P/00/1O/11/L4251P001-O11@9.jpg",
  picture_3: "https://mosaic01.ztat.net/vgs/media/pdp-zoom/L4/25/1P/00/1O/11/L4251P001-O11@8.jpg",
  picture_4: "https://mosaic01.ztat.net/vgs/media/pdp-zoom/L4/25/1P/00/1O/11/L4251P001-O11@6.jpg",
  collection: rl_fw_2018,
  designer: ralph,
  price: 314,
)






# ____Coco Chanel____________________________________________

coco = Designer.create!(
  brand: "Coco Chanel",
  first_name: "Coco",
  last_name: "Chanel",
  email: "coco@chanel.com",
  password: '123456',
  profile_picture: "https://static01.nyt.com/images/2017/01/29/us/29Emmitt-3/29Emmitt-3-blog427.jpg",
  city: "Johannesburg",
  age: 82,
  detail: "In 1906, Chanel was working in the spa resort town of Vichy. Vichy boasted a profusion of concert halls, theatres and cafés where she hoped to achieve success as a performer.",
)

cc_fw_2018 = Collection.create!(
  season: "Fall/Winter",
  year: 2018,
  detail: "This is for the advantures woman.",
  designer: coco
)

Product.create!(
  name: "CHANEL 2015 HAND-PAINTED TWEED JACKET",
  detail: "Very Good. Faint wear throughout; light discoloration at interior arms; light discoloration at cuffs.",
  color: "black",
  sizes: [44,46,48,50,52],
  picture_1: "https://product-images.therealreal.com/CHA167314_1_enlarged.jpg",
  picture_2: "https://product-images.therealreal.com/CHA167314_2_product.jpg",
  picture_3: "https://product-images.therealreal.com/CHA167314_3_enlarged.jpg",
  picture_4: "https://product-images.therealreal.com/CHA167314_2_product.jpg",
  collection: cc_fw_2018,
  designer: coco,
  price: 200
)

Product.create!(
  name: "CHANEL 2017 GLITTERED TWEED JACKET W/ TAGS",
  detail: "From the Pre-Spring 2017 Collection. Midnight and pale blue Chanel glittered tweed Jacket featuring sequin embellishments throughout",
  color: "blue",
  sizes: [44,46,48,50,52],
  picture_1: "https://product-images.therealreal.com/CHA147774_1_enlarged.jpg",
  picture_2: "https://product-images.therealreal.com/CHA147774_2_enlarged.jpg",
  picture_3: "https://product-images.therealreal.com/CHA147774_3_enlarged.jpg",
  picture_4: "https://product-images.therealreal.com/CHA147774_4_enlarged.jpg",
  collection: cc_fw_2018,
  designer: coco,
  price: 809
)

Product.create!(
  name: "ALEXANDER MCQUEEN WOOL ZIP-UP JACKET",
  detail: "Terracotta wool Alexander McQueen wool jacket featuring long sleeves, dual zip pockets at sides, and asymmetrical zip closure at front.",
  color: "red",
  sizes: [44,46,48,50,52],
  picture_1: "https://product-images.therealreal.com/ALE43108_1_enlarged.jpg",
  picture_2: "https://product-images.therealreal.com/ALE43108_2_enlarged.jpg",
  picture_3: "https://product-images.therealreal.com/ALE43108_3_enlarged.jpg",
  picture_4: "https://product-images.therealreal.com/ALE43108_2_enlarged.jpg",
  collection: cc_fw_2018,
  designer: coco,
  price: 43
)

Product.create!(
  name: "CHANEL WOVEN HOUNDSTOOTH JACKET",
  detail: "Black, white and creme Chanel woven houndstooth jacket with fringe trim and interlocking CC button closures at center front. Size not listed, estimated from measurements.",
  color: "white",
  sizes: [44,46,48,50,52],
  picture_1: "https://product-images.therealreal.com/CHA198791_1_enlarged.jpg",
  picture_2: "https://product-images.therealreal.com/CHA198791_2_enlarged.jpg",
  picture_3: "https://product-images.therealreal.com/CHA198791_3_enlarged.jpg",
  picture_4: "https://product-images.therealreal.com/CHA198791_1_enlarged.jpg",
  collection: cc_fw_2018,
  designer: coco,
  price: 60
)

Product.create!(
  name: "REED KRAKOFF 2015 SHEARLING VEST",
  detail: "From the Pre-Fall 2015 Collection. Black Reed Krakoff shearling vest with mock neck, leather panels at sides, dual zip pockets and concealed zip closure at center front. Size not listed, estimated from measurements.",
  color: "white",
  sizes: [44,46,48,50,52],
  picture_1: "https://product-images.therealreal.com/REE28431_1_enlarged.jpg",
  picture_2: "https://product-images.therealreal.com/REE28431_2_enlarged.jpg",
  picture_3: "https://product-images.therealreal.com/REE28431_3_enlarged.jpg",
  picture_4: "https://product-images.therealreal.com/REE28431_2_enlarged.jpg",
  collection: cc_fw_2018,
  designer: coco,
  price: 70
)



# ___Giorgio Armani____________________________________________

armani = Designer.create!(
  brand: "Giorgio Armani",
  first_name: "Giorgio",
  last_name: "Armani",
  email: "giorgio@Armani",
  password: '123456',
  profile_picture: "http://images.vogue.it/imgs/galleries/encyclo/stilisti/009164/dl002401-235509_0x420.jpg",
  city: "New York",
  age: 52,
  detail: "After his stint in the armed forces, Armani found a job as a window dresser at La Rinascente, a department store in Milan in 1957. He went on to become a seller for the menswear department, in which capacity he gained valuable experience in the marketing aspect of the fashion industry.",
)

ga_fw_2018 = Collection.create!(
  season: "Fall/Winter",
  year: 2018,
  detail: "This is for the cool person.",
  designer: armani
)

Product.create!(
  name: "JACKET",
  detail: "Very Good. Faint wear throughout; light discoloration at interior arms; light discoloration at cuffs.",
  color: "blue",
  sizes: [44,46,48,50,52],
  picture_1: "https://cdn.yoox.biz/34/34804056ab_14_f.jpg",
  picture_2: "https://cdn.yoox.biz/34/34804056ab_14_r.jpg",
  picture_3: "https://cdn.yoox.biz/34/34804056ab_14_d.jpg",
  picture_4: "https://cdn.yoox.biz/34/34804056ab_14_a.jpg",
  collection: ga_fw_2018,
  designer: armani,
  price: 70
)

Product.create!(
  name: "UTILITY SHORTS",
  detail: "These fashionable utilitarian style shorts have enough cargo pockets to keep all your essentials close by no matter where the day takes you.",
  color: "yellow",
  sizes: [44,46,48,50,52],
  picture_1: "https://cdn.yoox.biz/46/46539889wa_14_f.jpg",
  picture_2: "https://cdn.yoox.biz/46/46539889wa_14_r.jpg",
  picture_3: "https://cdn.yoox.biz/46/46539889wa_14_d.jpg",
  picture_4: "https://cdn.yoox.biz/46/46539889wa_14_e.jpg",
  collection: ga_fw_2018,
  designer: armani,
  price: 70
)

Product.create!(
  name: "DEBOSSED LOGO SHORTS",
  detail: "Weekend essential shorts in a comfy cotton blend are made with a ribbed waistband and a cool embossed logo on the side.",
  color: "white",
  sizes: [44,46,48,50,52],
  picture_1: "https://cdn.yoox.biz/46/46530977ac_14_f.jpg",
  picture_2: "https://cdn.yoox.biz/46/46530977ac_14_e.jpg",
  picture_3: "https://cdn.yoox.biz/46/46530977ac_14_d.jpg",
  picture_4: "https://cdn.yoox.biz/46/46530977ac_14_b.jpg",
  collection: ga_fw_2018,
  designer: armani,
  price: 70

)

Product.create!(
  name: "CHUNKY KNIT BLAZER",
  detail: "This blazer-cardigan hybrid features the best of both worlds— a tailored fit and a chunky, textural knit.",
  color: "grey",
  sizes: [44,46,48,50,52],
  picture_1: "https://cdn.yoox.biz/34/34775299pf_14_f.jpg",
  picture_2: "https://cdn.yoox.biz/34/34775299pf_14_r.jpg",
  picture_3: "https://cdn.yoox.biz/34/34775299pf_14_d.jpg",
  picture_4: "https://cdn.yoox.biz/34/34775299pf_14_e.jpg",
  collection: ga_fw_2018,
  designer: armani,
  price: 70
)

Product.create!(
  name: "VELVET BELL-SLEEVE TOP",
  detail: "Dramatic and holiday-ready, this luxe velvet top features statement-making bell sleeves and a cutout neckline.",
  color: "grey",
  sizes: [44,46,48,50,52],
  picture_1: "https://cdn.yoox.biz/46/46550748al_14_f.jpg",
  picture_2: "https://cdn.yoox.biz/46/46550748al_14_r.jpg",
  picture_3: "https://cdn.yoox.biz/46/46550748al_14_e.jpg",
  picture_4: "https://cdn.yoox.biz/46/46550748al_14_a.jpg",
  collection: ga_fw_2018,
  designer: armani,
  price: 70
)





umit = Designer.create!(
  brand: "Umit Benan",
  first_name: "Umit",
  last_name: "Benan",
  email: "umithimself@benan.common",
  password: "123456",
  profile_picture: "https://www.umitbenan.com/themes/default-bootstrap/img/2.jpg",
  city: "Milan",
  age: 2009,
  detail:" Umit Benan wanted to be a filmmaker, but diverted to fashion rather naturally, keeping the urge to tell stories intact. He makes no real distinction between life, fantasy and fiction because really there isn’t one. “I am interested in contrasts. That’s what life is all about, isn’t it?” he says. His clothes – real, bold, imaginative – follow suit.
Aesthetic imprinting leaves an indelible mark on fertile minds. Umit Benan was born to Turkish parents in Germany in 1980, and raised in Istanbul. As a kid in the 80s, he was bombarded with the assertive fashions and powerful masculine visions of the time, thanks to his clothing manufacturer father. As a teen in the 90s, he absorbed the contrasts and layering of the decade while growing up away from home at boarding school and university, in Switzerland and the US. His utterly personal point of view stems from these roots.
After graduation, Umit landed jobs with prestigious designers in New York and in Milan, where he finally settled in 2006. He launched his eponymous line in 2009 and swiftly won the 1st edition of Who’s on Next/Uomo contest the year after at Pitti Uomo. In 2012 Umit Benan was chosen the best menswear brand in Japan. And between 2011/2013 Umit was the creative director of Trussardi designing mens, womens and accessories for the 1st line.
Umit Benan uses clothes to build personas, putting to good use the muti-culti life experiences accumulated in a chaotic city full of contrasts such as Istanbul or the mingling of different characters and cultures experienced in the dorms of boarding school. It’s these mixes and frictions that get him going. “I don’t like perfection” he states, having mastered the art of perfect imperfection. Street-casting, thereafter, becomes an essential tool: not as a show trick, however, but as an integral phase of the design process. When Umit finds the character who epitomizes the mood he has in mind for the season, he builds a whole fictional story around him, writing everything down in detail like the storyteller he is and finally getting down to the clothes.
Freedom of expression is Umit’s main goal in life and the reason he decided to be a fashion-maker. With each collection, he addresses issues that touch him personally, be it misconceptions around a beard, the ethos of outlaw artists who wander metropolitan streets at night or memories of a girlfriend who loved menswear.
Umit’s own brand of fashion-making might be charged with a narrative aura, but it’s the the clothes that really speak by themselves, oozing a quintessential masculinity. They are sophisticated, luxurious and sturdy: the wardrobe of choice of elegant men who get their hands dirty. Refined yet raw, the Umit Benan man is authentic, powerful, full of lively contrasts. Like life."
  )

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
  profile_picture: "http://www.strangerlagos.com/content/images/2016/02/postimperial.jpg",
  city: "Lagos",
  age: 2013
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
  designer: umit,
  price: 91
  )

karate_kid_trench_two = Product.create!(
  name: "KARATE KID TRENCH COAT",
  detail: "100% Wool",
  color: "Navy",
  sizes: [44,46,48],
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
  sizes: [48,50],
  picture_1: "https://www.umitbenan.com/1845/kk-trench-coat.jpg",
  picture_2: "https://www.umitbenan.com/1650/kk-trench-coat.jpg",
  picture_3: "https://www.umitbenan.com/1847/kk-trench-coat.jpg",
  picture_4: "https://www.umitbenan.com/1849/kk-trench-coat.jpg",
  collection: fw_2018,
  designer: umit,
  price: 91
  )

sc = StoreCollection.create!(
  season: "Spring",
  year: 2018,
  details: "My new collection for next year, lalala",
  retailer: monica,

  )

designerorder = DesignerOrder.create!(
  total_quote: 10.203,
  order_requested: true,
  order_confirmed: false,
  store_collection: sc,
  )

puts "done!"
