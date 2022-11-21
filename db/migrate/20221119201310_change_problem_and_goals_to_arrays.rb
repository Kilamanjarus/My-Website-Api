class ChangeProblemAndGoalsToArrays < ActiveRecord::Migration[7.0]
  def change
    remove_column :blog_posts, :goals
    add_column :blog_posts, :goals, :integer
    remove_column :blog_posts, :problems
    add_column :blog_posts, :problems, :integer
  end
end
