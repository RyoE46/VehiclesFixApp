class VehicleType < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Motorcycle' },
    { id: 3, name: 'Automobile' },
    { id: 4, name: 'Others' },
  ]

  include ActiveHash::Associations
	has_many :vehicles

  end
