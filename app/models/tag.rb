class Tag < ApplicationRecord
  has_many :car_tag_relations
  has_many :cars, through: :car_tag_relations
end
