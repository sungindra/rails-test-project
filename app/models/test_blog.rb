# == Schema Information
#
# Table name: test_blogs
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TestBlog < ApplicationRecord
end
