class RentingsController < ApplicationController
  def show
    @renting = Renting.find(params[:id])
  end
end
