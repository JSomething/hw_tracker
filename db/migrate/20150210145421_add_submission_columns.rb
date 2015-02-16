class AddSubmissionColumns < ActiveRecord::Migration
  def change
    add_column :submissions, :description, :text
    add_column :submissions, :workflow_state, :string
    add_column :submissions, :submission_name, :string
  end
end
