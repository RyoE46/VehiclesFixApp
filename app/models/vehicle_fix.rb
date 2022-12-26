class VehicleFix < ApplicationRecord

  validates :vehicle_id, presence: true
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true
  validates :images, length: { minimum: 0, maximum: 6, message: "6枚以下にしてください" }

  validates :fix_spot_id, numericality: { other_than: 1, message: "を入力してください" }


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :vehicle
  belongs_to :fix_spot
  has_many_attached :images
end
