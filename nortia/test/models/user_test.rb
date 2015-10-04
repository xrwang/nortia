# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  location_long    :float
#  location_lat     :float
#  username         :string
#  age              :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  provider         :string
#  uid              :string
#  name             :string
#  oauth_token      :string
#  oauth_expires_at :datetime
#  email            :string
#  image_url        :string
#  availability     :text             default([]), is an Array
#  zipcode          :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
