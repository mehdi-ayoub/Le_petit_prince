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

  def show
    @planet = Planet.find(params[:id])
  end
end
