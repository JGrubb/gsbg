# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  properties  :hstore
#  created_at  :datetime
#  updated_at  :datetime
#  price       :decimal(8, 2)
#

class Product < ActiveRecord::Base
end
