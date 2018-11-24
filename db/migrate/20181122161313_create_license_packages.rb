class CreateLicensePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :license_packages do |t|
      t.string :name

      t.timestamps
    end
  end
end
