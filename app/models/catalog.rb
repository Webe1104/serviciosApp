require 'csv'
class Catalog < ApplicationRecord
	has_many :areas, dependent: :destroy

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
  		Catalog.create! row.to_hash
  	
	end
  end
end
