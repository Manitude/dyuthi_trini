class LicensePackage < ApplicationRecord
	has_one :corporate
	before_create :set_default_package

	validates :name, presence: true

private
  def set_default_package
    self.role ||= LicensePackage.find_by_name('lite')
  end
end
