class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string     :manufacturer,    null: false
      t.string     :vehicle_name,    null: false
      t.string     :next_inspection, null: false
      t.references :user,        null: false, foreign_key: true 
      #t.integer    :vehicle_type_id, null: false
      t.timestamps
    end
  end
end
