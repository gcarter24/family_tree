class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :location, null: false
      t.timestamps
    end
  end
end
