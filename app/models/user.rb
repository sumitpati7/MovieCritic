# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_name  :string
#  user_color :string
#
class User < ApplicationRecord
  has_many :review
end
