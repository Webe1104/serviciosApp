class Item < ApplicationRecord
  belongs_to :area

    def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
        item = Item.new(name: row["name"])
        item.area_id = Area.where(name: row["Area"]).to_a.first.id
        item.save
  		end
    end
end
