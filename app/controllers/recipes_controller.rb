class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :destroy, :edit, :update]
  
  def index
    @recipes = Recipe.includes(:chef).order("created_at DESC").page(params[:page]).per(10)
  end  

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create!(recipe_params)
    redirect_to chefs_path
  end
  
  def show
    @comment = Comment.new
    @comments = @recipe.comments.includes(:chef, :customer)
   
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

