# == Schema Information
#
# Table name: wallets
#
#  id         :integer          not null, primary key
#  balance    :integer
#  credit     :integer
#  debit      :integer
#  last_used  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class WalletTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
