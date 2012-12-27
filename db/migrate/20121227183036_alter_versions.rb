class AlterVersions < ActiveRecord::Migration
  def up
    add_column :versions, :sprint_start_date, :date unless column_exists? :versions, :sprint_start_date
  end

  def down
    remove_column :versions, :sprint_start_date if column_exists? :versions, :sprint_start_date
  end
end
