class AddStatusToRentings < ActiveRecord::Migration[7.0]
  def change
    add_column :rentings, :status, :string
  end
end
