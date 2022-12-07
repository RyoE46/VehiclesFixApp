class VehicleFix < ApplicationRecord
  validates :image, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true
  #validates :fix_spot_id, numericality: { other_than: 1, message: "can't be blank" }

  belongs_to :user
  belongs_to :vehicles
  #belongs_to :fix_spot
  has_one_attached :image
end
