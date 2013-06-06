# == Schema Information
#
# Table name: cookbooks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  cuisine     :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  isbn        :integer
#

require 'test_helper'

class CookbookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
