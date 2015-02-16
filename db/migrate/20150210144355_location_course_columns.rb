class LocationCourseColumns < ActiveRecord::Migration
  def change
    add_column :location_courses, :location_id, :integer
    add_column :location_courses, :course_id, :integer
  end
end
