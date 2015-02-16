class CreateLocationCourses < ActiveRecord::Migration
  def change
    create_table :location_courses do |t|

      t.timestamps null: false
    end
  end
end
