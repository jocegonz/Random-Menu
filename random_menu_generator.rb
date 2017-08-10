
#generates 10 random menu items from 3 arrays
adjective = ["Slippery", "Old", "Toasted", "Aged", "Baked", "Grilled",
  "Charred", "Roasted", "Southwestern-Style", "Cold"]

style = ["Broiled", "Boiled", "Pan-Fried", "Sauteed", "Poached",
  "Chipotle", "Sriracha", "Vodka-Infused", "Jalapeno", "Adobo-Rubbed"]

food = ["Hot Dogs", "Tomatoes", "Beans", "Shrimp", "Noodles",
  "Mushrooms", "Fish & Chips", "Tacos", "Lasagna", "Chicken"]

#stores options picked by random generator
picked = []
picked_adjective = ""
picked_style = ""
picked_food = ""

#loops to create menu items 1-10
(1..10).each do |num|
  print "#{num} "

#chooses one word randomly from adjective, style, food arrays
#checks if word already exists in picked array
#prints a word not in array
#adds word to array
  picked_adjective = adjective[rand(0..9)]
  while picked.include?(picked_adjective)
    picked_adjective = adjective[rand(0..9)]
  end
  print "#{picked_adjective} "
  picked << picked_adjective

  picked_style = style[rand(0..9)]
  while picked.include?(picked_style)
    picked_style = style[rand(0..9)]
  end
  print "#{picked_style} "
  picked << picked_style

  picked_food = food[rand(0..9)]
  while picked.include?(picked_food)
    picked_food = food[rand(0..9)]
  end
  puts picked_food
  picked << picked_food

end
