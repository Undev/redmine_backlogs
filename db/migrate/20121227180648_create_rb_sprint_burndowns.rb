class CreateRbSprintBurndowns < ActiveRecord::Migration
  def up
    create_table :rb_sprint_burndowns, :force => true do |t|
      t.integer  :version_id
      t.text     :stories
      t.text     :burndown
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_index :rb_sprint_burndowns, :version_id unless index_exists? :rb_sprint_burndowns, :version_id
  end

  def down
    remove_index :rb_sprint_burndowns, :version_id if index_exists? :rb_sprint_burndowns, :version_id

    drop_table :rb_sprint_burndowns if table_exists? :rb_sprint_burndowns
  end
end
