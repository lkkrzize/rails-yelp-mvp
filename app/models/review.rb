class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, comparison: { greater_than_or_equal_to: 0 }
  validates :rating, comparison: { less_than_or_equal_to: 5 }
  validates :rating, numericality: { only_integer: true }
end

# Review
#   has a content
#   has a rating (stored as integer)
#   content cannot be blank
#   rating cannot be blank
#   parent restaurant cannot be nil
#   rating should be an integer (FAILED - 9)
#   rating should be a number between 0 and 5 (FAILED - 10)
#
#   A review’s rating must be a number between 0 and 5.
#   A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!