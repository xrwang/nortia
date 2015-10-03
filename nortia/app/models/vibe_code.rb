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
require 'vibe_code_generator'

class VibeCode < ActiveRecord::Base
  belongs_to :wallet, dependent: :destroy
end
