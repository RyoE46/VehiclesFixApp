class Vehicle < ApplicationRecord
  validates :user_id, presence: true
  validates :image, presence: true
  validates :manufacturer, presence: true, length: { maximum: 50 }
  validates :vehicle_name, presence: true, length: { maximum: 100 }

  validates :vehicle_type_id, numericality: { other_than: 1, message: "を入力してください" }

  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :vehicle_fixes, dependent: :destroy
  belongs_to :user
  belongs_to :vehicle_type
  has_one_attached :image
end


