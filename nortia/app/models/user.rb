# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  location_long :float
#  location_lat  :float
#  zipcode       :integer
#  username      :string
#  age           :integer
#  availability  :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ActiveRecord::Base
  has_many :skills, dependent: :destroy
end
