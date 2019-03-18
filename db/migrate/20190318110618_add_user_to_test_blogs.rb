class AddUserToTestBlogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :test_blogs, :user, foreign_key: true
  end
end
