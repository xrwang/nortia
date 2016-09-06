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

class VibeCode < ActiveRecord::Base

  belongs_to :giver_wallet, :foreign_key => "giver_wallet_id", :class_name => "Wallet", dependent: :destroy
  belongs_to :receiver_wallet, :foreign_key => "receiver_wallet_id", :class_name => "Wallet", dependent: :destroy

  before_create 'vibe_code_generator'

  def vibe_code_generator
    self.code = CouponCode.generate
  end


end
