class Recipe < ApplicationRecord
    attachment :image
    belongs_to :user
    after_create{ REDIS.zincrby "recipes", 1, self.id}
   
    with_options presence: true do
    validates :title
    validates :body
    validates :image
  end
end
