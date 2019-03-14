class Catalog < ApplicationRecord
	has_many :areas
	has_many :items
end
