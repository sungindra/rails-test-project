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

class TestBlog < ApplicationRecord
  belongs_to :test_owner

  def self.test_scope_title(title)
    where(title: title)
  end
end
