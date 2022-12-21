class CreateVehicleFixes < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicle_fixes do |t|
      t.string      :title, null: false
      t.text        :content, null: false
      t.string      :mileage
      t.integer     :fix_spot_id, null: false
      t.references :user,        null: false, foreign_key: true 
      t.references :vehicle,     null: false, foreign_key: true 
      t.timestamps
    end
  end
end
