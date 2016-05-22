User.create!([
  {email: "jenordgaard@gmail.com", encrypted_password: "$2a$10$u3DD866Lh/vX29cRhVyptePNww1GiMStq0uKZOguldIGhRH/C3Ywq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-04-28 03:38:30", last_sign_in_at: "2016-04-28 03:38:30", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true},
  {email: "bob@bob.com", encrypted_password: "$2a$10$txhBcrKzn2PZvp/ONjB15Oh.IBJhGkalpcgnOOEw2BbWe2oQl9pwe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, admin: false}
])
CartedProduct.create!([
  {product_id: 2, order_id: 1, quantity: 1},
  {product_id: 5, order_id: 1, quantity: 2},
  {product_id: 6, order_id: 1, quantity: 2},
  {product_id: 2, order_id: 11, quantity: 1},
  {product_id: 3, order_id: 11, quantity: 1},
  {product_id: 2, order_id: 11, quantity: 2},
  {product_id: 3, order_id: 12, quantity: 3},
  {product_id: 9, order_id: 13, quantity: 3}
])
CategorizedProduct.create!([
  {category_id: 1, product_id: 1},
  {category_id: 2, product_id: 5},
  {category_id: 1, product_id: 2},
  {category_id: 2, product_id: 3},
  {category_id: 1, product_id: 4},
  {category_id: 2, product_id: 7},
  {category_id: 1, product_id: 8},
  {category_id: 3, product_id: 8},
  {category_id: 4, product_id: 1},
  {category_id: 4, product_id: 2},
  {category_id: 4, product_id: 4},
  {category_id: 4, product_id: 5},
  {category_id: 4, product_id: 6},
  {category_id: 4, product_id: 7},
  {category_id: 2, product_id: 6}
])
Category.create!([
  {name: "fast"},
  {name: "big"},
  {name: "new"},
  {name: "used"}
])
Image.create!([
  {product_id: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/4/48/Oldsmobile_Cutlass_coupe_--_10-19-2010.jpg"},
  {product_id: nil, image_url: "https://chivethethrottle.files.wordpress.com/2010/08/funny-cars-woodward-20.jpg"},
  {product_id: nil, image_url: "http://carzz.co/ford-e-series-van-vintage-murals-shag-carpet-cool-van_712375.jpg"},
  {product_id: nil, image_url: "https://c2.staticflickr.com/6/5565/15031373350_d5fbb3b2de_z.jpg"},
  {product_id: nil, image_url: "http://trueautosite.com/wp-content/uploads/images/mercury-cougar_5223.jpg"},
  {product_id: nil, image_url: "http://trueautosite.com/wp-content/uploads/images/mercury-cougar_5223.jpg"},
  {product_id: nil, image_url: "http://www.curbsideclassic.com/wp-content/uploads/2014/06/8-i037224.jpg"},
  {product_id: nil, image_url: "http://2.bp.blogspot.com/-Gd4WM8v9Th0/VGt95i9bCHI/AAAAAAAARpc/DhpXszM5-GU/s1600/Cool%2BJapanese%2BVan.jpg"}
])
Order.create!([
  {subtotal: nil, tax: nil, total: nil, user_id: 1, completed: nil},
  {subtotal: nil, tax: nil, total: nil, user_id: 1, completed: nil},
  {subtotal: nil, tax: nil, total: nil, user_id: 1, completed: nil},
  {subtotal: nil, tax: nil, total: nil, user_id: 1, completed: nil},
  {subtotal: nil, tax: nil, total: nil, user_id: 1, completed: nil},
  {subtotal: nil, tax: nil, total: nil, user_id: 1, completed: nil},
  {subtotal: nil, tax: nil, total: nil, user_id: 1, completed: nil},
  {subtotal: "500.0", tax: "45.0", total: "545.0", user_id: 1, completed: nil},
  {subtotal: "800.0", tax: "72.0", total: "872.0", user_id: 1, completed: true},
  {subtotal: "1500.0", tax: "135.0", total: "1635.0", user_id: 1, completed: true},
  {subtotal: nil, tax: nil, total: nil, user_id: 1, completed: false}
])
Product.create!([
  {name: "Thuglife", price: "100.0", image_url: "https://upload.wikimedia.org/wikipedia/commons/4/48/Oldsmobile_Cutlass_coupe_--_10-19-2010.jpg", color: "Baby Blue", make: "Cutlass", model: "Chevy", description: "Sweet smooth ride", in_stock: false, supplier_id: nil, user_id: nil},
  {name: "General Lee", price: "500.0", image_url: "http://trueautosite.com/wp-content/uploads/images/mercury-cougar_5223.jpg", color: "Red", make: "Chevy", model: "Chevelle", description: "My mom's first car", in_stock: false, supplier_id: nil, user_id: nil},
  {name: "ThunderCat", price: "1000.0", image_url: "http://cdn.boldride.com/dodge/2014/dodge-ram-black-express.2000x1188.Apr-04-2014_09.14.23.239026.jpg", color: "Gray", make: "Dodge", model: "Victory", description: "My dream kid car", in_stock: false, supplier_id: nil, user_id: nil},
  {name: "Baby", price: "30.0", image_url: "http://www.curbsideclassic.com/wp-content/uploads/2014/06/8-i037224.jpg", color: "Black", make: "Bronco", model: "Ford", description: "Bad Ass Muscle Car", in_stock: false, supplier_id: nil, user_id: nil},
  {name: "Bubba", price: "70.0", image_url: "http://carzz.co/ford-e-series-van-vintage-murals-shag-carpet-cool-van_712375.jpg", color: "Gravy", make: "Econoline", model: "Ford", description: "Sweet van", in_stock: false, supplier_id: nil, user_id: nil},
  {name: "Whoops", price: "0.0", image_url: "https://c2.staticflickr.com/6/5565/15031373350_d5fbb3b2de_z.jpg", color: "Black", make: "Cadillac", model: "Escalade", description: "What the fuuuuuuuh", in_stock: false, supplier_id: nil, user_id: nil},
  {name: "Silky", price: "10.0", image_url: "http://2.bp.blogspot.com/-Gd4WM8v9Th0/VGt95i9bCHI/AAAAAAAARpc/DhpXszM5-GU/s1600/Cool%2BJapanese%2BVan.jpg", color: "Pearl", make: "VW", model: "Superjet", description: "So smooth...", in_stock: nil, supplier_id: nil, user_id: nil},
  {name: "Ralph", price: "400.0", image_url: "https://chivethethrottle.files.wordpress.com/2010/08/funny-cars-woodward-20.jpg", color: "Green", make: "Burrata", model: "Nasty", description: "Cool guy", in_stock: nil, supplier_id: nil, user_id: nil},
  {name: "Brrrrap", price: "40.0", image_url: nil, color: nil, make: "", model: "", description: "", in_stock: nil, supplier_id: nil, user_id: 1}
])
Supplier.create!([
  {name: "Brass Auto", phone: "1914567", email: "brass@gmail.com"},
  {name: "Loveless Auto", phone: "1912837", email: "love@gmail.com"},
  {name: "Donny's Auto", phone: "2432837", email: "donny@gmail.com"},
  {name: nil, phone: nil, email: nil}
])
