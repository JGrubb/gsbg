class Page < ActiveRecord::Base

  def to_param
    slug.parameterize
  end

  def create_slug
    self.slug = self.title.parameterize
  end

end
