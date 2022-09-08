# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product = Product.new(name: "dresses", price: 10, description: "summer wear")
product.save
product = Product.new(name: "pants", price: 15, description: "long shorts")
product.save
product = Product.new(name: "shorts", price: 8, description: "short pants")
product.save
product = Product.new(name: "shoes", price: 20, description: "feet covers")
product.save

supplier = Supplier.new(name: "Amazon", email: "zon@test.com", phone_number: "5559991234")
supplier.save
supplier = Supplier.new(name: "Etsy", email: "yste@test.com", phone_number: "5559991234")
supplier.save

Image.create(url: "https://cdn.cliqueinc.com/posts/196498/summer-dresses-with-sleeves-196498-1531963914639-promo.700x0c.jpg", product_id: 1)
Image.create(url: "https://media1.popsugar-assets.com/files/thumbor/2Mfexu_w_kO1SzpyNFWpm9t1-m8/29x970:2389x3330/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/04/18/855/n/1922564/e239d1595cb8d0c50ae0b6.77963233_/i/Best-Summer-Dresses-Amazon-2019.jpg", product_id: 1)
Image.create(url: "https://media.gq.com/photos/6283c2db69b411d0f3704dcd/master/pass/GQ-pantsart-option2.jpg", product_id: 2)
Image.create(url: "https://img.guess.com/image/upload/f_auto,q_auto:eco,fl_strip_profile,dpr_1.5,fl_advanced_resize,fl_progressive,w_392,c_scale/v1/NA/Style/ECOMM/W2GA20WDX72-F10N", product_id: 2)
Image.create(url: "https://lsco.scene7.com/is/image/lsco/563270086-alt1-pdp-lse?$laydownfront$", product_id: 3)
Image.create(url: "https://pyxis.nymag.com/v1/imgs/2ee/0a6/4362c09147ac9f0bc3c5289091c08d13e3-gym-shorts.2x.rsocial.w600.jpg", product_id: 3)
Image.create(url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-running-shoes-lead-1576249557.jpg?crop=0.965xw:0.858xh;0.0353xw,0&resize=1200:*", product_id: 4)
Image.create(url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gh-071922-most-comfortable-shoes-1658244157.png?crop=0.830xw:0.638xh;0.109xw,0.178xh&resize=1200:*", product_id: 4)
Image.create(url: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/47112d0a-dc23-4b74-876c-b638fecf0af2/air-jordan-1-retro-high-og-shoes-a7Zzxm.png", product_id: 4)
