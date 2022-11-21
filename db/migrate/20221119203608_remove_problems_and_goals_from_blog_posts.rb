class RemoveProblemsAndGoalsFromBlogPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :blog_posts, :goals
    remove_column :blog_posts, :problems
  end
end
