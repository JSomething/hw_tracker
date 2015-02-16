class Location < ActiveRecord::Base
  has_many :courses, through: :location_courses
  has_many :location_courses
end
