class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  belongs_to :prefecture
  #絶対必要でなはないよ、presence trueにしなくて良い。けど引っかかるかな？
  belongs_to :food
  belongs_to :drink
  belongs_to :vibe
  has_many :comments

  REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  with_options presence: true do
    validates :user_name
    validates :password, format: { with: REGEX, message: 'は6文字以上の半角英数字が使えます' }
    with_options format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: 'は、全角(ひらがな、カタカナ、漢字)の文字を使用してください' } do
      validates :first_kana
      validates :last_kana
    end
    validates :birth_date
    validates :phone_number
    validates :vibe_id
    validates :food_id
    validates :drink_id
    validates :prefecture_id
  end
end
