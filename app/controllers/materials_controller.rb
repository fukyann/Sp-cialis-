class MaterialsController < ApplicationController
  def new
    @material = Material.new
  end
  def create
    @material = Material.new(material_params)
  end 
  
  def show
  end  

  private

  def material_params
    params.require(:material).permit(:name, :amount, :price)
  end  
end

