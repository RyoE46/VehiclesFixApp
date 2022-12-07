class Vehicle < ApplicationRecord
  validates :image, presence: true
  validates :manufacturer, presence: true, length: { maximum: 50 }
  validates :vehicle_name, presence: true, length: { maximum: 100 }

  #validates :vehicle_type_id, numericality: { other_than: 1, message: "can't be blank" }

  has_many :vehicles_fixes
  belongs_to :user
  #belongs_to :vehicle_type
  has_one_attached :image
end


