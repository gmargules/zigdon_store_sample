# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  details    :string(255)
#  price      :float            default(0.0)
#  quantity   :integer          default(0)
#  serial     :string(255)
#  image_name :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Product < ActiveRecord::Base
	validates :content, presence:   true
	has_many :answers
end
