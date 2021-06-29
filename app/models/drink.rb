class Drink < ActiveHash::Base
  self.data = [
      {id: 0, name: '選択してください'},
      {id: 1, name: 'コーラ'}, {id: 2, name: 'レモン'}, {id: 3, name: '重曹'},
      {id: 4, name: '無水酢酸'}, {id: 5, name: 'ビール'}, {id: 6, name: '水酸化ナトリウム'},
      {id: 7, name: 'アニリン'}, {id: 8, name: 'レモン汁'}, {id: 9, name: '鉄筋コンクリート'},
      {id: 10, name: 'レモン堂'} ]

  include ActiveHash::Associations
  has_many :users, :cars
end