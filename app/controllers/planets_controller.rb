class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def show
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.category = Category.find(params[:planet][:category_id])
    @planet.user = current_user
    if @planet.save
      redirect_to @planet, notice: "A planet was successfully added."
    else
      render :new, status: :unprocessable_entity
    end
  end

  #Haya B
  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    @planet = Planet.find(params[:id])
    if @planet.update(planet_params)
      redirect_to(@planet)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  #Joshua
  def destroy
    @planet = Planet.find(params[:id])
    if @planet.destroy
      redirect_to planets_path(@planet)
    else
      render :index
    end
  end

  private
  def planet_params
    params.require(:planet).permit(:title, :description, :renting_price, :image_url, :category_id)
  end
end
