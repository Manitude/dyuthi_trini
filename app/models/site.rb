class Site < ApplicationRecord
  belongs_to :corporate
  has_many :plants

  validates :name, presence: true
  validates :corporate_id, presence: true
end
