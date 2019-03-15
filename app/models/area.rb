require 'csv'
class Area < ApplicationRecord
  belongs_to :catalog
  has_many :items, dependent: :destroy

    def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
    	puts row
    	puts '----------------------------------'
    		Catalog.create! row.to_hash
    	
  		end
    end
end
