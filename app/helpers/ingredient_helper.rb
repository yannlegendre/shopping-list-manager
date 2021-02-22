module IngredientHelper
  def toggle_shortage_button(ingredient)
    return unless ingredient.rotation

    message = ingredient.shortage ? 'Back in stock' : 'Out of Stock'

    link_to message, toggle_shortage_ingredient_path(ingredient), method: :post
  end
end
