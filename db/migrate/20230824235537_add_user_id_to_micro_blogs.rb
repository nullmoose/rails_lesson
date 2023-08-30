class AddUserIdToMicroBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :micro_blogs, :user_id, :integer
  end
end
