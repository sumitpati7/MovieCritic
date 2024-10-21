# == Schema Information
#
# Table name: movies
#
#  id             :integer          not null, primary key
#  original_title :string
#  overview       :text
#  poster_path    :string
#  runtime        :integer
#  status         :string
#  imdb_id        :integer
#  tmdb_id        :integer
#  vote_average   :float
#  vote_count     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  backdrop_path  :string
#
require "test_helper"

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
