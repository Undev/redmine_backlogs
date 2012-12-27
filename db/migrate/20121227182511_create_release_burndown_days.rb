class CreateReleaseBurndownDays < ActiveRecord::Migration
  def up
    create_table :release_burndown_days, :force => true do |t|
      t.integer  :release_id
      t.date     :day
      t.integer  :remaining_story_points
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def down
    drop_table :release_burndown_days if table_exists? :release_burndown_days
  end
end
