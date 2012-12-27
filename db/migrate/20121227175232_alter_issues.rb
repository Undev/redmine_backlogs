class AlterIssues < ActiveRecord::Migration
  def up
    add_column :issues, :position, :integer unless column_exists? :issues, :position
    add_column :issues, :remaining_hours, :float unless column_exists? :issues, :remaining_hours
    add_column :issues, :story_points, :float unless column_exists? :issues, :story_points

    add_index :issues, :position unless index_exists? :issues, :position
  end

  def down
    remove_index :issues, :position if index_exists? :issues, :position

    remove_column :issues, :position if column_exists? :issues, :position
    remove_column :issues, :remaining_hours if column_exists? :issues, :remaining_hours
    remove_column :issues, :story_points if column_exists? :issues, :story_points
  end
end
