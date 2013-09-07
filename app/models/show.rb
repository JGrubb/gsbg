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
  
  def self.state_abbr 
    {
      :AL => 'Alabama',
      :AK => 'Alaska',
      :AS => 'America Samoa',
      :AZ => 'Arizona',
      :AR => 'Arkansas',
      :CA => 'California',
      :CO => 'Colorado',
      :CT => 'Connecticut',
      :DE => 'Delaware',
      :DC => 'District of Columbia',
      :FM => 'Micronesia1',
      :FL => 'Florida',
      :GA => 'Georgia',
      :GU => 'Guam',
      :HI => 'Hawaii',
      :ID => 'Idaho',
      :IL => 'Illinois',
      :IN => 'Indiana',
      :IA => 'Iowa',
      :KS => 'Kansas',
      :KY => 'Kentucky',
      :LA => 'Louisiana',
      :ME => 'Maine',
      :MH => 'Islands1',
      :MD => 'Maryland',
      :MA => 'Massachusetts',
      :MI => 'Michigan',
      :MN => 'Minnesota',
      :MS => 'Mississippi',
      :MO => 'Missouri',
      :MT => 'Montana',
      :NE => 'Nebraska',
      :NV => 'Nevada',
      :NH => 'New Hampshire',
      :NJ => 'New Jersey',
      :NM => 'New Mexico',
      :NY => 'New York',
      :NC => 'North Carolina',
      :ND => 'North Dakota',
      :OH => 'Ohio',
      :OK => 'Oklahoma',
      :OR => 'Oregon',
      :PW => 'Palau',
      :PA => 'Pennsylvania',
      :PR => 'Puerto Rico',
      :RI => 'Rhode Island',
      :SC => 'South Carolina',
      :SD => 'South Dakota',
      :TN => 'Tennessee',
      :TX => 'Texas',
      :UT => 'Utah',
      :VT => 'Vermont',
      :VI => 'Virgin Island',
      :VA => 'Virginia',
      :WA => 'Washington',
      :WV => 'West Virginia',
      :WI => 'Wisconsin',
      :WY => 'Wyoming'
    }
  end
end
