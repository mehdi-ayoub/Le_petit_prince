class PlanetsController < ApplicationController
  def index
    @planets = Planet.all

    @markers = @planets.geocoded.map do |planet|
      {
        lat: planet.latitude,
        lng: planet.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {planet: planet})
      }
    end
    if params[:query]
      @planets = Planet.search_by_title_and_description(params[:query])
    end
  end

  def new
    @planet = Planet.new
  end

  def show
    @planet = Planet.find(params[:id])
    @renting = Renting.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.category = Category.find(params[:planet][:category_id])
    @planet.user = current_user
    if @planet.save
      redirect_to planets_path, notice: "A planet was successfully added."
    else
      render :new, status: :unprocessable_entity
    end
  end

  #Haya B
  def edit
    @planet = Planet.find(params[:id])
    if current_user != @planet.user
      redirect_to planets_path, alert: "You are not authorized to edit this planet."
    end
  end

  def update
    @planet = Planet.find(params[:id])

    # Ensure that only the owner can update the planet
    if current_user == @planet.user
      if @planet.update(planet_params)
        redirect_to planets_path(@planet), notice: "Planet was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    else
      redirect_to planets_path, alert: "You are not authorized to edit this planet."
    end
  end

  #Josua
  def destroy
    @planet = Planet.find(params[:id])

    # Ensure that only the owner can update the planet
    if current_user == @planet.user
      if @planet.destroy!
        redirect_to planets_path, notice: "Planet was successfully deleted."
      else
        render :index
      end
    else
      redirect_to planets_path, alert: "You are not authorized to delete this planet."
    end
  end

  private
  def planet_params
    params.require(:planet).permit(:title, :description, :renting_price, :image_url, :category_id, :spaceport, photos: [])
  end
end
