class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :post
      t.string :goals
      t.string :problems
      t.string :date

      t.timestamps
    end
  end
end
