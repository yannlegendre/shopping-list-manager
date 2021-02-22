class IngredientsController < ApplicationController
  before_action :find_ingredient, only: %i[destroy toggle_shortage]

  def index
    @ingredient = Ingredient.new
    @ingredients = Ingredient.rotation.sorted
  end

  def destroy
    @ingredient.destroy
    redirect_to ingredients_path
  end

  def toggle_shortage
    @ingredient.update(shortage: !@ingredient.shortage)
    # todo : rerender
    redirect_to ingredients_path
  end

  def create
    if Ingredient.create(ingredient_params)
      redirect_to ingredients_path
    else
      render :form
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :rotation, :min_stock, :unit_id)
  end

  def find_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
