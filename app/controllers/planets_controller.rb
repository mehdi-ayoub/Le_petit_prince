class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def new
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
end
