class CreateCorporates < ActiveRecord::Migration[5.0]
  def change
    create_table :corporates do |t|
      t.string :name
      t.references :license_package, foreign_key: true

      t.timestamps
    end
  end
end
