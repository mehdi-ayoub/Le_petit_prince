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

  def my_offers
    @rentings = current_user.rentings_as_owner
    @rentings = @rentings.order(:id)
  end

  def accept
    @renting = Renting.find(params[:id])
    puts @renting
    @renting.status = "accepted"
    @renting.save
    redirect_to my_offers_rentings_path, status: :see_other
  end

  def decline
    @renting = Renting.find(params[:id])
    @renting.status = "declined"
    @renting.save
    redirect_to my_offers_rentings_path, status: :see_other
  end

  private

  def renting_params
    params.require(:renting).permit(:start_date, :end_date)
  end
end
