class CreateLocationCourseUsers < ActiveRecord::Migration
  def change
    create_table :location_course_users do |t|

      t.timestamps null: false
    end
  end
end
