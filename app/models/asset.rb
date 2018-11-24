class Asset < ApplicationRecord
  belongs_to :line
  has_many :tags

  validates :name, presence: true
  validates :line_id, presence: true
end
