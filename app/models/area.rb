class Area < ApplicationRecord
  belongs_to :catalog
  has_many :items
end
