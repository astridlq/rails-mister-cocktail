class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    cocktail = Cocktail.find(params[:cocktail_id])
    dose = Dose.new(doses_params)
    dose.cocktail = cocktail
    if dose
      dose.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def delete
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def doses_params
    params.require(:dose).permit(:description)
  end
end
