class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string     :manufacturer
      t.string     :vehicle_name
      t.string     :next_inspection
      # t.references :user, null: false, foreign_key: true
      # ユーザー機能追加後にコメントアウト
      #t.integer    :vehicle_type_id, null: false
      t.timestamps
    end
  end
end
