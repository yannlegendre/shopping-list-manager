class ListsController < ApplicationController

  def create
    List.destroy_all
    # List.last.update(active: false) if List.any?(&:active)

    generate_from_shortage

    generate_from_recipes

    redirect_to current_list_path
  end

  def current_list
    render :list, locals:  { list: List.active }
  end


  private

  def generate_from_shortage
    list = List.create(active: true)

    Ingredient.shortaged.each do |ingredient|
      Item.create(
        ingredient: ingredient,
        quantity:   ingredient.min_stock,
        list:       list
      )
    end

  end

  def generate_from_recipes
    # TODO
  end
end
