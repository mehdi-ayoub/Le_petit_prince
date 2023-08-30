class AddCoordinatesToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :latitude, :float
    add_column :planets, :longitude, :float
  end
end
