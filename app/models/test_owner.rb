# == Schema Information
#
# Table name: test_owners
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TestOwner < ApplicationRecord
  has_many :test_blogs
  accepts_nested_attributes_for :test_blogs, reject_if: lambda { |x| x['title'].blank? || x['body'].blank? }
end
