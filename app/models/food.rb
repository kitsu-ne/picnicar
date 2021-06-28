class Food < ActiveHash::Base
  self.data = [
      {id: 0, name: '選択してください'},
      {id: 1, name: 'ハンバーガー'}, {id: 2, name: 'レモン'}, {id: 3, name: 'ライス'},
      {id: 4, name: 'DYM'}, {id: 5, name: 'アンモニア'}, {id: 6, name: 'パン'},
      {id: 7, name: '結婚'}, {id: 8, name: 'レンコン'}, {id: 9, name: 'トマト'},
      {id: 10, name: 'クスリ'} ]

  include ActiveHash::Associations
  has_many :users, :cars
end