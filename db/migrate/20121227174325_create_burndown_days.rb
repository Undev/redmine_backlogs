class CreateBurndownDays < ActiveRecord::Migration
  def up
    create_table :burndown_days, :force => true do |t|
      t.integer  :points_committed, :default => 0,    :null => false
      t.integer  :points_accepted,  :default => 0,    :null => false
      t.integer  :points_resolved,  :default => 0,    :null => false
      t.float    :remaining_hours,  :default => 0.0,  :null => false
      t.integer  :version_id
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_index :burndown_days, :version_id unless index_exists? :burndown_days, :version_id
  end

  def down
    remove_index :burndown_days, :version_id if index_exists? :burndown_days, :version_id

    drop_table :burndown_days if table_exists? :burndown_days
  end
end
