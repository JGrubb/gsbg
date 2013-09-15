# == Schema Information
#
# Table name: shows
#
#  id           :integer          not null, primary key
#  venue        :string(255)
#  address      :string(255)
#  city         :string(255)
#  state        :string(255)
#  date         :date
#  info         :text
#  info_link    :text
#  tickets_link :text
#  created_at   :datetime
#  updated_at   :datetime
#  country      :string(255)      default("USA")
#  geo          :json
#  deleted      :boolean
#  cancelled    :boolean
#

class Show < ActiveRecord::Base
  validates :venue, :date, presence: true
  
  def self.state_abbr 
    [
      'Alabama',
      'Alaska',
      'America Samoa',
      'Arizona',
      'Arkansas',
      'California',
      'Colorado',
      'Connecticut',
      'Delaware',
      'District of Columbia',
      'Micronesia1',
      'Florida',
      'Georgia',
      'Guam',
      'Hawaii',
      'Idaho',
      'Illinois',
      'Indiana',
      'Iowa',
      'Kansas',
      'Kentucky',
      'Louisiana',
      'Maine',
      'Islands1',
      'Maryland',
      'Massachusetts',
      'Michigan',
      'Minnesota',
      'Mississippi',
      'Missouri',
      'Montana',
      'Nebraska',
      'Nevada',
      'New Hampshire',
      'New Jersey',
      'New Mexico',
      'New York',
      'North Carolina',
      'North Dakota',
      'Ohio',
      'Oklahoma',
      'Oregon',
      'Palau',
      'Pennsylvania',
      'Puerto Rico',
      'Rhode Island',
      'South Carolina',
      'South Dakota',
      'Tennessee',
      'Texas',
      'Utah',
      'Vermont',
      'Virgin Island',
      'Virginia',
      'Washington',
      'West Virginia',
      'Wisconsin',
      'Wyoming'
    ]
  end
end
