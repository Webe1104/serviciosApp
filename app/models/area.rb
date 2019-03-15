require 'csv'
class Area < ApplicationRecord
  belongs_to :catalog
  has_many :items, dependent: :destroy

    def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
        area = Area.new(name: row["name"])

        area.catalog_id = Catalog.where(name: row["Catalog"]).to_a.first.id
        area.save
  		end
    end
end
