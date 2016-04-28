Product.create!([
  {name: "Thuglife", price: "100.0", image_url: "https://upload.wikimedia.org/wikipedia/commons/4/48/Oldsmobile_Cutlass_coupe_--_10-19-2010.jpg", color: "Baby Blue", make: "Cutlass", model: "Chevy", description: "Sweet smooth ride", in_stock: false, supplier_id: nil},
  {name: "General Lee", price: "500.0", image_url: "http://trueautosite.com/wp-content/uploads/images/mercury-cougar_5223.jpg", color: "Red", make: "Chevy", model: "Chevelle", description: "My mom's first car", in_stock: false, supplier_id: nil},
  {name: "ThunderCat", price: "1000.0", image_url: "http://cdn.boldride.com/dodge/2014/dodge-ram-black-express.2000x1188.Apr-04-2014_09.14.23.239026.jpg", color: "Gray", make: "Dodge", model: "Victory", description: "My dream kid car", in_stock: false, supplier_id: nil},
  {name: "Baby", price: "30.0", image_url: "http://www.curbsideclassic.com/wp-content/uploads/2014/06/8-i037224.jpg", color: "Black", make: "Bronco", model: "Ford", description: "Bad Ass Muscle Car", in_stock: false, supplier_id: nil},
  {name: "Bubba", price: "70.0", image_url: "http://carzz.co/ford-e-series-van-vintage-murals-shag-carpet-cool-van_712375.jpg", color: "Gravy", make: "Econoline", model: "Ford", description: "Sweet van", in_stock: false, supplier_id: nil},
  {name: "Ralph", price: "400.0", image_url: "https://chivethethrottle.files.wordpress.com/2010/08/funny-cars-woodward-20.jpg", color: "Green", make: "Burrata", model: "Nasty", description: nil, in_stock: nil, supplier_id: nil},
  {name: "Whoops", price: "0.0", image_url: "https://c2.staticflickr.com/6/5565/15031373350_d5fbb3b2de_z.jpg", color: "Black", make: "Cadillac", model: "Escalade", description: "What the fuuuuuuuh", in_stock: false, supplier_id: nil},
  {name: "Silky", price: "10.0", image_url: "http://2.bp.blogspot.com/-Gd4WM8v9Th0/VGt95i9bCHI/AAAAAAAARpc/DhpXszM5-GU/s1600/Cool%2BJapanese%2BVan.jpg", color: "Pearl", make: "VW", model: "Superjet", description: nil, in_stock: nil, supplier_id: nil}
])
Supplier.create!([
  {name: "Brass Auto", phone: "1914567", email: "brass@gmail.com"},
  {name: "Loveless Auto", phone: "1912837", email: "love@gmail.com"},
  {name: "Donny's Auto", phone: "2432837", email: "donny@gmail.com"}
])
