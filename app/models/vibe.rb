class Vibe < ActiveHash::Base
  self.data = [
      {id: 0, name: '選択してください'},
      {id: 1, name: '結核'}, {id: 2, name: '巫女さん'}, {id: 3, name: '無害'},
      {id: 4, name: '怖い'}, {id: 5, name: 'るり姉さん'}, {id: 6, name: '毒素'},
      {id: 7, name: '白い粉'}, {id: 8, name: '急変'}, {id: 9, name: '肺炎'},
      {id: 10, name: '妖術'} ]

    include ActiveHash::Associations
    has_many :users, :cars
end