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

class Wallet < ActiveRecord::Base
  belongs_to :user
end
