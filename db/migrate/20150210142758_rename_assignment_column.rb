class RenameAssignmentColumn < ActiveRecord::Migration
  def change
    rename_column :assignments, :name, :assignment_name
  end
end
