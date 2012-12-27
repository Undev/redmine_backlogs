class CreateRbIssueHistories < ActiveRecord::Migration
  def up
    create_table :rb_issue_histories, :force => true do |t|
      t.integer :issue_id
      t.text    :history
    end

    add_index :rb_issue_histories, :issue_id unless index_exists? :rb_issue_histories, :issue_id
  end

  def down
    remove_index :rb_issue_histories, :issue_id if index_exists? :rb_issue_histories, :issue_id

    drop_table :rb_issue_histories if table_exists? :rb_issue_histories
  end
end
