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
#  user_id    :integer
#

class Wallet < ActiveRecord::Base
  # after_commit 'balance_calculator'

  belongs_to :user, dependent: :destroy
  has_many :generated_coupons, :foreign_key => "giver_wallet_id", :class_name => "VibeCode"
  has_many :received_coupons, :foreign_key => "receiver_wallet_id", :class_name => "VibeCode"

  def balance_calculator
    self.balance = wallet.received_coupons.credit_equiv
  end


end
