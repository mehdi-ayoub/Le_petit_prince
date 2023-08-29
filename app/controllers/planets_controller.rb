class PlanetsController < ApplicationController
  def new
    # we have to locate which category the user will add the the planet
    @category = Category.find(params[:category_id])
    @planet = Planet.new
  end

  def create
    @category = Category.find(params[:category_id])
    
  end

end
