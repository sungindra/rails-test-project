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
  has_many :test_blog
end
