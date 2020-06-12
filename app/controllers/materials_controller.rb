class MaterialsController < ApplicationController
  def new
    @material = Material.new
  end
  def create
    Material.create(material_params)
    redirect_to recipes_path
  end 
  
  def show
    @material = Material.find(params[:id])
  end  

  private

  def material_params
    params.require(:material).permit(:name, :amount, :price)
  end  
end

