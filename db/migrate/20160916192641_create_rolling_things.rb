class CreateRollingThings < ActiveRecord::Migration[5.0]
  def change
    create_table :rolling_things do |t|
      t.string :name
      t.string :speed

      t.timestamps
    end
  end
end
