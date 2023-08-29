class CreateRentings < ActiveRecord::Migration[7.0]
  def change
    create_table :rentings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :planet, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
