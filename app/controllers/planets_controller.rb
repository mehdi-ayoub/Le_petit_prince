class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def index
    @planet = Planet.all
  end

  def create
    @planet = Planet.new(planet_params)
    if @planet.save
      redirect_to @planet, notice: "A planet was successfully added."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def planet_params
    params.require(:planet).permit(:title, :description, :renting_price, :image_url)
  end
end
