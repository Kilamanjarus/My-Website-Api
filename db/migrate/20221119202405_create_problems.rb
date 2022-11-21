class CreateProblems < ActiveRecord::Migration[7.0]
  def change
    create_table :problems do |t|
      t.string :blog_post_id
      t.string :problem

      t.timestamps
    end
  end
end
