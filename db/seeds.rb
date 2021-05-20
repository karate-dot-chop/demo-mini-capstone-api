suppliers = Supplier.create!([
  {name: "Think Geek", email: "thinkgeek@gmail.com", phone_number: "333-4444"},
  {name: "Dumbledore's Wizardy Supplies", email: "dws@gmail.com", phone_number: "222-7777"}
])

products = Product.create!([
  {name: "WNYX Mug", price: "2.0", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", quantity: 1, supplier_id: suppliers[1].id},
  {name: "Hitchhiker's Guide to the Galaxy", price: "42.0", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", quantity: 1, supplier_id: 2},
  {name: "Lightsaber", price: "270.0", description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster", quantity: 1, supplier_id: 1},
  {name: "Space Cowboy Laser Gun", price: "170.0", description: "This weapon has no other description than, Shiney!", quantity: 1, supplier_id: 1},
  {name: "DnD Dice set", price: "57.0", description: "Take down mighty dragons with this timeless set of 20 sided wonders", quantity: 1, supplier_id: 2},
  {name: "Sonic Screwdriver", price: "9.0", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", quantity: 1, supplier_id: 2},
  {name: "Yoda sleeping bag", price: "40.0", description: "For real", quantity: 1, supplier_id: 2},
  {name: "Hello Kitty Rice Cooker", price: "58.0", description: "Makes sticky rice", quantity: 1, supplier_id: 1}
])

Image.create!([
  {url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg", product_id: 1},
  {url: "http://www.notcot.com/images/guide.gif", product_id: 2},
  {url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", product_id: 3},
  {url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", product_id: 4},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", product_id: 5},
  {url: "https://dyn0.media.forbiddenplanet.com/products/28577492.jpg", product_id: 6},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", product_id: 7},
  {url: "https://i5.walmartimages.com/asr/8fbcad21-ef6e-43a7-8308-25411b44436d_1.2be433602da0fe22a1efb4b2170cc819.jpeg?odnWidth=612&odnHeight=612&odnBg=ffffff", product_id: 8},
  {url: "https://images-na.ssl-images-amazon.com/images/I/61iIZpPMQnL._AC_SL1004_.jpg", product_id: 3},
  {url: "https://i.guim.co.uk/img/media/14822a22caa8e704a732338e253a71cd1062cad2/0_399_2110_1265/master/2110.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=298a2a3721c669b11111923dc71eab0a", product_id: 3}
])
