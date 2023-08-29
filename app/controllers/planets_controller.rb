class PlanetsController < ApplicationController
  def new
    # we have to locate which category the user will add the the planet
    @category = Category.find(params[:category_id])
    @planet = Planet.new
  end

  def create
    @category = Category.find(params[:category_id])
  end


  def destroy
    @planet = Planet.find(params[:id])
    if @planet.destroy
      redirect_to planets_path(@planet)
    else
      render :index
  end

end
