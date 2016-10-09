require 'rest-client'
require 'json'
require 'pry'

class IngredientsAdapter

  def get_calories(name)
    name_formatted = name.split(" ").join("%20")
    response = RestClient.get("https://api.nutritionix.com/v1_1/search/#{name_formatted}?fields=item_name%2Citem_id%2Cbrand_name%2Cnf_calories%2Cnf_total_fat&appId=5ba5ab28&appKey=e9cee5381f8aaa345421ba53278b58ca")
    if !!response
      ingredient_cals = calories_per_tablespoon(JSON.parse(response))
    else
      ingredient_cals = "n/a"
    end
    return ingredient_cals
  end

  def calories_per_tablespoon(formatted_response)
    hit = formatted_response['hits'].find do |hit|
       hit['fields']['item_name'].downcase.include?("cup")
    end
    if !!hit
      (hit['fields']['nf_calories']/16.0).round
    else
      "n/a"
    end
  end

  def set_calories_for_ingredients
    Ingredient.all.each do |ingredient|
      ingredient.caloriespertbsp = get_calories(ingredient.name)
      ingredient.save
    end
  end

  def get_ingredient_description(name)
    response = RestClient.get("https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro=&explaintext=&titles=#{name}")
    formatted_response = JSON.parse(response)

    item = formatted_response['query']['pages'].values.find do |data|
      data['title'].downcase == name.downcase
    end
    if !!item['extract']
      description = format_ingredient_description(item['extract'])
    else
      description = ""
    end
    puts description
    return description
  end

  def format_ingredient_description(raw_description)
    shortened_description = raw_description[0..900].split("")
    position = 0

    shortened_description.each_with_index do |letter, index|
       if letter == "."
         position = index
       end
     end

    return shortened_description[0..(position)].join()
  end

  def set_descriptions_for_ingredients
    Ingredient.all.each do |ingredient|
      ingredient.description = get_ingredient_description(ingredient.name)
      ingredient.save
    end
  end


end
#make task
#schedule task to run with heroku (once a day)
