require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredients_data = JSON.parse(ingredient_serialized)

ingredients = ingredients_data['drinks'].map do |ingredient_data|
  ingredient_data['strIngredient1']
end

ingredients.each do |ingredient_name|
  Ingredient.create(name: ingredient_name)
end
