# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  location_long    :float
#  location_lat     :float
#  zipcode          :integer
#  username         :string
#  age              :integer
#  availability     :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  password         :digest
#  provider         :string
#  uid              :string
#  name             :string
#  oauth_token      :string
#  oauth_expires_at :datetime
#  email            :string
#

class User < ActiveRecord::Base
  has_many :skills, dependent: :destroy
  has_one :wallet

  def self.from_omniauth(auth)
    Rails.logger.debug auth
    User.where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
