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
#  image_url  :string
#  user_id    :integer
#

class Skill < ActiveRecord::Base
  belongs_to :user, dependent: :destroy

  MAINCATS = ['beauty services',
  'automotive repair',
  'computer',
  'creative',
  'childcare',
  'bicycle',
  'event planning & help',
  'farm&garden skills',
  'financial skills',
  'food&household help',
  'labor/moving help',
  'legal skills',
  'lessons skills',
  'professional development',
  'pet care',
  'real estate skills',
  'skilld trade skills',
  'therapeutic skills',
  'travel, vacation & tours',
  'writing, editing & translation']

end
