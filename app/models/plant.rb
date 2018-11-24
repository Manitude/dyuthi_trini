class Plant < ApplicationRecord
  belongs_to :site
  has_many :lines

  validates :name, presence: true
  validates :site_id, presence: true
end
