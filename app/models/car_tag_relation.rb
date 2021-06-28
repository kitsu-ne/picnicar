class CarTagRelation < ApplicationRecord
  belongs_to :car
  belongs_to :tag
end
