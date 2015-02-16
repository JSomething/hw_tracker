class AddCourseColumns < ActiveRecord::Migration
  def change
    add_column :courses, :name, :string
    add_column :courses, :description, :string
    add_column :courses, :location_id, :integer
  end
end
