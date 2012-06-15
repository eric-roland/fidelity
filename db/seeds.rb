hand_tools = Category.find_or_create_by_name("hand tools")
building_materials = Category.find_or_create_by_name("building materials")
hammer = Product.find_or_create_by_name(name: "hammer", price: 1.01, category: hand_tools)
drill = Product.find_or_create_by_name(name: "drill", price: 9.25, category: hand_tools)
wood_board = Product.find_or_create_by_name(name: "wood board", price: 15.91, category: building_materials)
vinyl_siding = Product.find_or_create_by_name(name: "vinyl siding", price: 19.67, category: building_materials)
hammer.product_attributes.find_or_create_by_item_attribute(item_attribute: "drives_nails")
drill.product_attributes.find_or_create_by_item_attribute(item_attribute: "makes_holes")
wood_board.product_attributes.find_or_create_by_item_attribute(item_attribute: "natural")
vinyl_siding.product_attributes.find_or_create_by_item_attribute(item_attribute: "maintenance_free")
Question.find_or_create_by_query(query: "do you want to make holes in things", category: hand_tools, item_attribute: "makes_holes")
Question.find_or_create_by_query(query: "do you want to drive nails", category: hand_tools, item_attribute: "drives_nails")
Question.find_or_create_by_query(query: "do you want natural material", category: building_materials, item_attribute: "natural")
Question.find_or_create_by_query(query: "do you want maintenance free care", category: building_materials, item_attribute: "maintenance_free")


