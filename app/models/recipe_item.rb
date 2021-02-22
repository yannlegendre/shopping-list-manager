# == Schema Information
#
# Table name: recipe_items
#
#  id            :bigint           not null, primary key
#  quantity      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ingredient_id :bigint           not null
#  recipe_id     :bigint           not null
#
# Indexes
#
#  index_recipe_items_on_ingredient_id  (ingredient_id)
#  index_recipe_items_on_recipe_id      (recipe_id)
#
# Foreign Keys
#
#  fk_rails_...  (ingredient_id => ingredients.id)
#  fk_rails_...  (recipe_id => recipes.id)
#
class RecipeItem < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
end
