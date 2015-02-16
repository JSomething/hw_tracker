class ChangeLocationColumns < ActiveRecord::Migration
  def change
    remove_column :locations, :name
  end
end
