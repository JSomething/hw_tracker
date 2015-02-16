class AssignmentColumns < ActiveRecord::Migration
  def change
    add_column :assignments, :name, :string
    add_column :assignments, :requirements, :string
    add_column :assignments, :user_id, :integer
  end
end
