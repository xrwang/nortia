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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
