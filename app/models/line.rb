class Line < ApplicationRecord
  belongs_to :plant
  has_many :assets

  validates :name, presence: true
  validates :plant_id, presence: true
end
