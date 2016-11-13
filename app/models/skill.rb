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

  MAINCATS = [ 'automotive repair',
  'computer',
  'creative / arts, performance, dance, photography',
  'creative / marketing, crafts, design, branding',
  'childcare',
  'classes & education',
  'bicycle repair',
  'event planning & help',
  'farm & garden skills',
  'financial skills',
  'food & household',
  'hair / beauty',
  'manual labor / moving',
  'legal skills',
  'life coaching',
  'professional development',
  'pet care',
  'real estate, business, negotiation',
  'skilled trade',
  'therapy (physical and mental)',
  'travel, vacation & tours',
  'writing, editing & translation',
  'other'
  ]

end
