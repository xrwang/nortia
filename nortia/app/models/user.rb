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

require 'zipcode_finder'

class User < ActiveRecord::Base
  has_many :skills, dependent: :destroy
  has_one :wallet

  # has_many :generated_coupons, class_name: "Coupon", foreign_key: :generated_by_user_id
  # has_many :cashed_coupons, class_name: "Coupon", foreign_key: :cashed_by_user_id

  before_save 'set_long_lat'
  after_create 'create_wallet'


  def self.from_omniauth(auth)
    Rails.logger.debug auth
    User.where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.image_url = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

private

  def create_wallet
    Wallet.create(user_id: id) if wallet.nil?
  end

  def set_long_lat
    api = ZipcodeLocation.new(zipcode)
    self.location_long, self.location_lat = api.get_long_lat
  end
end
