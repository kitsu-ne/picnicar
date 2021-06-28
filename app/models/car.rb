class Car < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :owner
  has_many :comments
  has_many :car_tag_relations
  has_many :tags, through: :car_tag_relations
  
  belongs_to :prefecture
  #絶対必要でなはないよ、presence trueにしなくて良い。けど引っかかるかな？
  belongs_to :food
  belongs_to :drink
  belongs_to :vibe
  belongs_to :prefecture
  #絶対必要でなはないよ、presence trueにしなくて良い。けど引っかかるかな？
  belongs_to :food
  belongs_to :drink
  belongs_to :vibe
  has_many :comments

  with_options presence: true do
    validates :car_name
    validates :explanation
    validates :time
    validates :postal_code
    validates :prefecture_id
    validates :address_line1
    validates :address_line2
  end
end
