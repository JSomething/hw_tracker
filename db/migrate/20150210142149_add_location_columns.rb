class AddLocationColumns < ActiveRecord::Migration
  def change
    add_column :locations, :location_name, :string
    add_column :locations, :address, :string
  end
end
