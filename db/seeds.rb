# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'unirest'

dillon = User.create(name: "Dillon", email: "dillon@email.com", password: "password")
khaleda = User.create(name: "Khaleda", email: "khaleda@email.com", password: "password")
silvana = User.create(name: "Silvana", email: "silvana@email.com", password: "password")

beef = Ingredient.create(name: "beef", price_level: "3", availability: "4")
tomato = Ingredient.create(name: "tomato", price_level: "2", availability: "3")
spaghetti = Ingredient.create(name: "spaghetti", price_level: "1", availability: "5")
onion = Ingredient.create(name: "onion", price_level: "2", availability: "3")

beef_ragu = Recipe.create(name: "ragu", instructions: "Mix all the ingredients and put sauce on it", description: "A hearty dinner", cooking_time: "3 hours", cuisine_type: "Italian", difficulty_level: "easy",course: "main")
tomato_sauce = Recipe.create(name: "tomato sauce", instructions: "Simmer for a long time", description: "Red sauce for spaghetti", cooking_time: "3 hours", cuisine_type: "Italian", difficulty_level: "medium",course: "side")
kebab = Recipe.create(name: "kebab", instructions: "Put everything on a stick", description: "Don't poke your eye out", cooking_time: "30 minutes", cuisine_type: "Middle-Eastern", difficulty_level: "hard",course: "appetizer")

dinner_with_friends = Menu.create(name: "Dinner With Friends", occasion: "Dinner Party", description: "Easy casual night with friends")


beef_ragu.ingredients.push(beef, tomato, spaghetti, onion)
tomato_sauce.ingredients.push(tomato, onion)
kebab.ingredients.push(beef, onion)

dinner_with_friends.recipes.push(beef_ragu, tomato_sauce, kebab)

dillon.recipes << beef_ragu
khaleda.menus << dinner_with_friends
silvana.recipes << tomato_sauce

50.times do |n|
  ing = Ingredient.new
  ing.name = Faker::Food.ingredient
  ing.price_level = rand(1..5).to_s
  ing.availability = rand(1..5).to_s
  ing.save
end
20.times do |n|
  ing = Ingredient.new
  ing.name = Faker::Food.spice
  ing.price_level = rand(1..5).to_s
  ing.availability = rand(1..5).to_s
  ing.save
end

i = IngredientsAdapter.new()
i.set_calories_for_ingredients
i.set_descriptions_for_ingredients



appetizers = [
    {"id":548169,"title":"Chocolate Crunch Snack Mix – 3 Points","readyInMinutes":40,"image":"Chocolate-Crunch-Snack-Mix--3-Points-548169.jpg","imageUrls":["Chocolate-Crunch-Snack-Mix--3-Points-548169.jpg"]},
    {"id":667917,"title":"Cilantro Salsa","readyInMinutes":20,"image":"Cilantro-Salsa-667917.jpg","imageUrls":["Cilantro-Salsa-667917.jpg"]},
    {"id":560638,"title":"Pumpkin Hummus","readyInMinutes":10,"image":"Pumpkin-Hummus-560638.jpg","imageUrls":["Pumpkin-Hummus-560638.jpg"]},
    {"id":376963,"title":"Picante Black Bean Hummus","readyInMinutes":15,"image":"Picante-Black-Bean-Hummus-376963.jpg","imageUrls":["Picante-Black-Bean-Hummus-376963.jpg"]},
    {"id":577598,"title":"Grilled Asparagus and Chili-Orange Quinoa Spring Rolls","readyInMinutes":25,"image":"Grilled-Asparagus-and-Chili-Orange-Quinoa-Spring-Rolls-577598.jpg","imageUrls":["Grilled-Asparagus-and-Chili-Orange-Quinoa-Spring-Rolls-577598.jpg"]},
    {"id":222482,"title":"Roasted vegetable & feta tostada","readyInMinutes":30,"image":"Roasted-vegetable---feta-tostada-222482.jpg","imageUrls":["Roasted-vegetable---feta-tostada-222482.jpg"]},
    {"id":698704,"title":"Black-Eyed Pea Dip","readyInMinutes":10,"image":"black-eyed-pea-dip-698704.jpg","imageUrls":["black-eyed-pea-dip-698704.jpg"]},
    {"id":474094,"title":"Skinny Hot Spinach and Artichoke Dip with Fontina Cheese","readyInMinutes":25,"image":"Skinny-Hot-Spinach-and-Artichoke-Dip-with-Fontina-Cheese-474094.jpg","imageUrls":["Skinny-Hot-Spinach-and-Artichoke-Dip-with-Fontina-Cheese-474094.jpg"]},
    {"id":558050,"title":"Guacamole","readyInMinutes":60,"image":"Guacamole-558050.jpg","imageUrls":["Guacamole-558050.jpg"]},{"id":21366,"title":"Green Garlic Guacamole","readyInMinutes":6,"image":"green_garlic_guacamole-21366.jpg","imageUrls":["green_garlic_guacamole-21366.jpg","green-garlic-guacamole-2-21366.jpg"]},
    {"id":45277,"title":"Quinoa And Sweet Potato Stuffed Mushroom Caps","readyInMinutes":45,"image":"quinoa_and_sweet_potato_stuffed_mushroom_caps-45277.jpg","imageUrls":["quinoa_and_sweet_potato_stuffed_mushroom_caps-45277.jpg","quinoa-and-sweet-potato-stuffed-mushroom-caps-2-45277.jpg"]},
    {"id":710542,"title":"Sweet Potato and Black Bean Nachos with Green Chile Salsa","readyInMinutes":45,"image":"sweet-potato-and-black-bean-nachos-with-green-chile-salsa-710542.jpg","imageUrls":["sweet-potato-and-black-bean-nachos-with-green-chile-salsa-710542.jpg"]},
    {"id":486616,"title":"Cilantro-Lime Turkey Taco Lettuce Wraps","readyInMinutes":20,"image":"Cilantro-Lime-Turkey-Taco-Lettuce-Wraps-486616.jpg","imageUrls":["Cilantro-Lime-Turkey-Taco-Lettuce-Wraps-486616.jpg"]},
    {"id":577160,"title":"Better Than Restaurant Guacamole","readyInMinutes":45,"image":"Better-Than-Restaurant-Guacamole-577160.jpg","imageUrls":["Better-Than-Restaurant-Guacamole-577160.jpg"]},
    {"id":19730,"title":"Quesadillas","readyInMinutes":21,"image":"quesadillas-19730.jpg","imageUrls":["quesadillas-19730.jpg","quesadillas-2-19730.jpg"]},
    {"id":604942,"title":"Feta Cheese and Avocado Hummus Dip","readyInMinutes":10,"image":"Feta-Cheese-and-Avocado-Hummus-Dip-604942.jpg","imageUrls":["Feta-Cheese-and-Avocado-Hummus-Dip-604942.jpg"]},
    {"id":462117,"title":"Asian Roll Lettuce Wrap","readyInMinutes":60,"image":"Asian-Roll-Lettuce-Wrap-462117.jpg","imageUrls":["Asian-Roll-Lettuce-Wrap-462117.jpg"]},
    {"id":758118,"title":"Chocolate Thistles","readyInMinutes":45,"image":"chocolate-thistles-758118.jpg","imageUrls":["chocolate-thistles-758118.jpg"]},
    {"id":285682,"title":"Nuts 'n Fruit Munch Mix","readyInMinutes":30,"image":"Nuts-n-Fruit-Munch-Mix-285682.jpg","imageUrls":["Nuts-n-Fruit-Munch-Mix-285682.jpg"]},
    {"id":535679,"title":"Asian Turkey Lettuce Wraps","readyInMinutes":25,"image":"Asian-Turkey-Lettuce-Wraps-535679.png","imageUrls":["Asian-Turkey-Lettuce-Wraps-535679.png"]},
    {"id":320030,"title":"Garlic Hummus.","readyInMinutes":10,"image":"Garlic-Hummus--320030.jpg","imageUrls":["Garlic-Hummus--320030.jpg"]},
    {"id":558553,"title":"Healthy Hot Spinach & Artichoke Dip","readyInMinutes":35,"image":"Healthy-Hot-Spinach---Artichoke-Dip-558553.jpg","imageUrls":["Healthy-Hot-Spinach---Artichoke-Dip-558553.jpg"]},
    {"id":516740,"title":"Pine Nut and Cilantro Hummus","readyInMinutes":10,"image":"Pine-Nut-and-Cilantro-Hummus-516740.jpg","imageUrls":["Pine-Nut-and-Cilantro-Hummus-516740.jpg"]},
    {"id":37342,"title":"Edamame Hummus","readyInMinutes":45,"image":"edamame_hummus-37342.jpg","imageUrls":["edamame_hummus-37342.jpg","edamame-hummus-2-37342.jpg"]},
    {"id":228225,"title":"Roasted Carrot and Hummus Dip","readyInMinutes":30,"image":"Roasted-Carrot-and-Hummus-Dip-228225.jpg","imageUrls":["Roasted-Carrot-and-Hummus-Dip-228225.jpg"]},
    {"id":23184,"title":"Cucumber Pomegranate And Mint Raita - A Yogurt Dip","readyInMinutes":45,"image":"cucumber-pomegranate-and-mint-raita-a-yogurt-dip-2-23184.jpg","imageUrls":["cucumber-pomegranate-and-mint-raita-a-yogurt-dip-2-23184.jpg"]},{"id":435725,"title":"Chicken Crescent Appetizer","readyInMinutes":30,"image":"Chicken-Crescent-Appetizer-435725.jpg","imageUrls":["Chicken-Crescent-Appetizer-435725.jpg"]},
    {"id":548383,"title":"Grilled Nachos","readyInMinutes":7,"image":"Grilled-Nachos-548383.jpg","imageUrls":["Grilled-Nachos-548383.jpg"]},{"id":525028,"title":"Strawberry Salsa","readyInMinutes":20,"image":"Strawberry-Salsa-525028.jpeg","imageUrls":["Strawberry-Salsa-525028.jpeg"]},
    {"id":155743,"title":"Chick-Pea Cumin Dip","readyInMinutes":45,"image":"chick-pea-cumin-dip-155743.jpg","imageUrls":["chick-pea-cumin-dip-155743.jpg"]},{"id":798562,"title":"Chinese BBQ Pork lettuce wraps","readyInMinutes":55,"image":"chinese-bbq-pork-lettuce-wraps-798562.jpg","imageUrls":["chinese-bbq-pork-lettuce-wraps-798562.jpg"]}]

    appetizers.each do |recipe|
      new_app = Recipe.new
      new_app.name = recipe[:title]
      new_app.cooking_time = recipe[:readyInMinutes]
      new_app.course = "appetizer"
      new_app.save
    end
