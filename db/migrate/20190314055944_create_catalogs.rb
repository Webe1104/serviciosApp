class CreateCatalogs < ActiveRecord::Migration[5.2]
  def change
    create_table :catalogs do |t|
      t.string :name
      t.has_many :areas

      t.timestamps
    end
  end
end
