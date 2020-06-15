class ChefsController < ApplicationController
  def index
    @recipes = Recipe.includes(:chef)
  end  
end
