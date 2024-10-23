# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  comment    :text
#  rating     :integer
#  movie_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Review < ApplicationRecord
  validates :rating, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0, 
  less_than_or_equal_to: 10 
}

  belongs_to :movie
  belongs_to :user
end
