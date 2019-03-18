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
  belongs_to :user

  def self.test_scope_title(title)
    where(title: title)
  end

  def set_defaults
    self.test_owner_id ||= TestOwner.first.id
  end

  after_initialize :set_defaults
end
