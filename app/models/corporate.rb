class Corporate < ApplicationRecord
  belongs_to :license_package
  has_many :sites

  validates :name, presence: true
  validates :license_package_id, presence: true
end
