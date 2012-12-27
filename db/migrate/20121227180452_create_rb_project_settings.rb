class CreateRbProjectSettings < ActiveRecord::Migration
  def up
    create_table :rb_project_settings, :force => true do |t|
      t.integer :project_id
      t.boolean :show_stories_from_subprojects, :default => true, :null => false
      t.boolean :show_in_scrum_stats,           :default => true, :null => false
    end
  end

  def down
    drop_table :rb_project_settings if table_exists? :rb_project_settings
  end
end
