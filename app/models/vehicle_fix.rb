class VehicleFix < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true
  #validates :fix_spot_id, numericality: { other_than: 1, message: "can't be blank" }


  belongs_to :user
  belongs_to :vehicle
  #belongs_to :fix_spot
  has_one_attached :image
end
