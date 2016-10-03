# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


dillon = User.create(name: "Dillon", email: "dillon@email.com", password: "password")
khaleda = User.create(name: "Khaleda", email: "khaleda@email.com", password: "password")
silvana = User.create(name: "Silvana", email: "silvana@email.com", password: "password")

beef = Ingredient.create(name: "beef", price_level: "3", availability: "4")
tomato = Ingredient.create(name: "tomato", price_level: "2", availability: "3")
spaghetti = Ingredient.create(name: "spaghetti", price_level: "1", availability: "5")
onion = Ingredient.create(name: "onion", price_level: "2", availability: "3")

beef_ragu = Recipe.create(name: "ragu", instructions: "Mix all the ingredients and put sauce on it", description: "A hearty dinner", cooking_time: "3 hours", cuisine_type: "Italian", difficulty_level: "easy")
tomato_sauce = Recipe.create(name: "tomato sauce", instructions: "Simmer for a long time", description: "Red sauce for spaghetti", cooking_time: "3 hours", cuisine_type: "Italian", difficulty_level: "medium")
kebab = Recipe.create(name: "kebab", instructions: "Put everything on a stick", description: "Don't poke your eye out", cooking_time: "30 minutes", cuisine_type: "Middle-Eastern", difficulty_level: "hard")

dinner_with_friends = Menu.create(name: "Dinner With Friends", occasion: "Dinner Party", description: "Easy casual night with friends")


beef_ragu.ingredients.push(beef, tomato, spaghetti, onion)
tomato_sauce.ingredients.push(tomato, onion)
kebab.ingredients.push(beef, onion)

dinner_with_friends.recipes.push(beef_ragu, tomato_sauce, kebab)

dillon.recipes << beef_ragu
khaleda.menus << dinner_with_friends
silvana.recipes << tomato_sauce
