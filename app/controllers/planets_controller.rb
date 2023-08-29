class PlanetsController < ApplicationController
  def new
    # we have to locate which category the user will add the the planet
    @category = Category.find(params[:category_id])
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
