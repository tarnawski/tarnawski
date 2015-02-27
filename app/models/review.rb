class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

validates_presence_of :content 
validates_presence_of :rating 
validates_presence_of :user_id 

def self.funkcja(item)
client=Review.where(user_id: item).last(5)
end

end
