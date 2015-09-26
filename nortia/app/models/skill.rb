# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  maincat    :string
#  subcat     :string
#  subsubcat  :string
#  experience :integer
#  need       :boolean
#  offer      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  imageurl   :string
#

class Skill < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
end