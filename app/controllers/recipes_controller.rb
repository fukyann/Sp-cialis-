class RecipesController < ApplicationController
  
  def index
  end  

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
  end
  
  def show
  end
  
  private

  def recipe_params
    params.require(:recipe).permit(:name, :amount, :cost, :image, :explanation, :make)
  end  
end

