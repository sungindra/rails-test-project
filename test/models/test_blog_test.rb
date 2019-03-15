# == Schema Information
#
# Table name: test_blogs
#
#  id            :bigint(8)        not null, primary key
#  title         :string
#  body          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  test_owner_id :bigint(8)
#

require 'test_helper'

class TestBlogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
