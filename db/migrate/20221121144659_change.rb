class Change < ActiveRecord::Migration[7.0]
  def change
    remove_column :goals, :blog_post_id
    add_column :goals, :blog_post_id, :integer
    remove_column :problems, :blog_post_id
    add_column :problems, :blog_post_id, :integer
  end
end
