class AddColumnToLocationCourseUsers < ActiveRecord::Migration
  def change
    add_column :location_course_users, :location_course_id, :integer
    add_column :location_course_users, :user_id, :integer
  end
end
