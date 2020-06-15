class ChefsController < ApplicationController
  def index
    @nickname = current_chef.nickname
    @recipes = current_chef.recipes.page(params[:page]).per(5).order("created_at DESC")
  end  
end
