class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

validates_presence_of :description
validates_presence_of :price
validates_presence_of :title
validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0, :less_than => 10} 

def average_rating
  reviews = self.reviews
  review_sum = reviews.inject(0) { |sum, review| sum += review.rating }
  avg_rating = review_sum.fdiv(reviews.count)
end




end
