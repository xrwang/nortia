# == Schema Information
#
# Table name: vibe_codes
#
#  id                 :integer          not null, primary key
#  giver_wallet_id    :integer
#  code               :string
#  credit_equiv       :integer
#  cashed             :boolean
#  receiver_wallet_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class VibeCodeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
