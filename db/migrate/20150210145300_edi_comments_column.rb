class EdiCommentsColumn < ActiveRecord::Migration
  def change
    rename_column :comments, :commentable_Type, :commentable_type
  end
end
