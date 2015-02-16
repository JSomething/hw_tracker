class AddColumnsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :content, :string
    add_column :comments, :user_id, :integer
    add_column :comments, :commentable_Type, :string
  end
end
