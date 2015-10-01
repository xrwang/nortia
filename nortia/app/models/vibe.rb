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

class Vibe < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
end
