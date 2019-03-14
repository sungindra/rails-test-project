class AddTestOwnerReferenceToTestBlogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :test_blogs, :test_owner, foreign_key: true
  end
end
