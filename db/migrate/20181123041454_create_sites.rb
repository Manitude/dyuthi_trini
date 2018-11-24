class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.references :corporate, foreign_key: true

      t.timestamps
    end
  end
end
