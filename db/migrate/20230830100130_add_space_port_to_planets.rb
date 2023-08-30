class AddSpacePortToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :spaceport, :string
  end
end
