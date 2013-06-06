# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  instructions :text
#  name         :string(255)
#  serving_size :integer
#  img_url      :text
#  course       :string(255)
#  cook_time    :integer
#  cookbook_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recipe < ActiveRecord::Base
  attr_accessible :cook_time, :course, :img_url, :instructions, :name, :serving_size, :cookbook_id

  belongs_to :cookbook, inverse_of: :recipes

end
