class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :destroy, :edit, :update]
  
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
  
  def edit
  end  

  def update
    @recipe.update(recipe_params)
  end

  def destroy
    @recipe.destroy
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :amount, :cost, :image, :explanation, :make).merge(chef_id: current_chef.id)
  end  

  def set_recipe
    @recipe = Recipe.find(params[:id]) 
  end
end

