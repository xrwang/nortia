# == Schema Information
#
# Table name: vibes
#
#  id          :integer          not null, primary key
#  credit_code :string
#  description :text
#  hours       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

require 'test_helper'

class VibeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
