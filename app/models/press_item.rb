# == Schema Information
#
# Table name: press_items
#
#  id         :integer          not null, primary key
#  pub        :string(255)
#  date       :date
#  link       :string(255)
#  quote      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PressItem < ActiveRecord::Base
  validates :pub, :link, presence: true
  mount_uploader :thumbnail, PressThumbnailUploader
end
