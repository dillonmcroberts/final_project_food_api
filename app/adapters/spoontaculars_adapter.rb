require 'rest-client'
require 'json'
require 'pry'
require 'unicode'
class SpoontacularsAdapter

# returns json [{'id':90210, 'title': 'chicken curry'}]
#   def search_recipes(query)
#     response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/autocomplete?number=10&query=#{query}",
#     headers:{
#       "X-Mashape-Key" => "Ut1Rbuerl6mshK22PwPulpODCNnxp1zNKdqjsndeeiWMHS8t9U",
#       "Accept" => "application/json"
#     }
#   end
# # returns {"results": ["title":"Cabbage Salad with Peanuts","readyInMinutes":15,"image":"cabbage-salad-with-peanuts-723984.jpg"]
#   def get_main_courses
#     response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?limitLicense=false&number=10&offset=0&query=&type=main+course",
#   headers:{
#     "X-Mashape-Key" => "Ut1Rbuerl6mshK22PwPulpODCNnxp1zNKdqjsndeeiWMHS8t9U",
#     "Accept" => "application/json"
#   }
#   end
# # returns {"extendedIngredients":[{"name":,"amount":,"unitShort":}],"instructions"}
  def get_recipes_details(id)
    response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/#{id}/information?includeNutrition=false",
  headers:{
    "X-Mashape-Key" => "Ut1Rbuerl6mshK22PwPulpODCNnxp1zNKdqjsndeeiWMHS8t9U",
    "Accept" => "application/json"
  }
  end
#
# def add_recipes_to_db(id)
#   recipe = get_recipes_details(id)
  # Recipe.create(
  # name: recipe["title"],
  # instructions: recipe["instructions"],
  # ingredients: recipe["extendedIngredients"],
  # course:"appetizer")

end
# #make task
# #schedule task to run with heroku (once a day)
