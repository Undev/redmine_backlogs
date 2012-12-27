class CreateReleases < ActiveRecord::Migration
  def up
    create_table :releases, :force => true do |t|
      t.string   :name
      t.date     :release_start_date
      t.date     :release_end_date
      t.integer  :initial_story_points
      t.integer  :project_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def down
    drop_table :releases if table_exists? :releases
  end
end
