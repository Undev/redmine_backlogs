class RemoveNullConstraintFromIssuePosition < ActiveRecord::Migration
  def up
    # redmine tests fails with not null position
    change_column :issues, :position, :integer, :null => true, :default => nil
  end

  def down
    change_column :issues, :position, :integer, :null => false
  end
end
