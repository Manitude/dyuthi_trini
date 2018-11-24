class Tag < ApplicationRecord
  belongs_to :asset

  	validates :name, presence: true
  	validates :asset_id, presence: true
end
