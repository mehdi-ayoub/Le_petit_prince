class RentingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @rentings = Renting.all
  end

  def show
    @renting = Renting.find(params[:id])
  end

  def new
    @planet = Planet.find(params[:planet_id])
    @renting = Renting.new
  end

  def create
    @planet = Planet.find(params[:planet_id])
    @renting = current_user.rentings.build(planet: @planet)

    if @renting.save
      redirect_to planet_rentings_path, notice: 'Planet rented successfully.'
    else
      render :new
    end
  end

  private

  def renting_params
    params.require(:renting).permit(:start_date, :end_date)
  end
end
