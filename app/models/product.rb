# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  price       :decimal(8, 2)
#  colors      :string(255)
#  sizes       :string(255)
#  image       :string(255)
#

class Product < ActiveRecord::Base
  mount_uploader :image, ProductImageUploader

  has_many :line_items

  before_save :parse_images

  before_destroy :ensure_not_referenced_by_line_items

  def parse_images
    
  end

  def ensure_not_referenced_by_line_items
    if line_items.count.zero?
      return true
    else
      errors.add(:base, 'This product is in some people\'s carts')
      return false
    end
  end

  SIZES = %w[XS S M L XL XXL]   
end
