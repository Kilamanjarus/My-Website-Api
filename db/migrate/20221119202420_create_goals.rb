class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :blog_post_id
      t.string :goal

      t.timestamps
    end
  end
end
