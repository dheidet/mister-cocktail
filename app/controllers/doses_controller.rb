class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
  end


  private
  def dose_arams
    params.require(:dose).permit(:ingredient_id, :description)
  end

end
