class CarsTag

  include ActiveModel::Model
  attr_accessor :car_tag, :car_name

  with_options presence: true do
    validates :car_name
    #これバリデーションかからんかな？
    validates :car_tag
  end

  def save
     = Tweet.create(message: message)
    tag = Tag.create(name: name)

    TweetTagRelation.create(tweet_id: tweet.id, tag_id: tag.id)
  end

end