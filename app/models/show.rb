# == Schema Information
#
# Table name: shows
#
#  id           :integer          not null, primary key
#  venue        :string(255)
#  address      :string(255)
#  city         :string(255)
#  state        :string(255)
#  geo          :string(255)
#  date         :date
#  info         :text
#  info_link    :text
#  tickets_link :text
#  created_at   :datetime
#  updated_at   :datetime
#

class Show < ActiveRecord::Base
  validates :venue, :date, presence: true
end
