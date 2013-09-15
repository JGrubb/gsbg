# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Page < ActiveRecord::Base

  def to_param
    slug.parameterize
  end

  def create_slug
    self.slug = self.title.parameterize
  end

end
