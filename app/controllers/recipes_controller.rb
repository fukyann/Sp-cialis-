class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.includes(:chef)
  end  

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create!(recipe_params)
    redirect_to chefs_path
  end
  
  def show
  end
  
  private

  def recipe_params
    params.require(:recipe).permit(:name, :amount, :cost, :image, :explanation, :make).merge(chef_id: current_chef.id)
  end  
end

