class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
    @locations = Location.all
  end

  def create
    @locations = Location.all
    @course = Course.create course_params
    @course.save
    redirect_to courses_path
  end

  def show
    @location = Location.find params[:location_id]
    @course = Course.find params[:id]
  end

  def edit
    @location = Location.find params[:location_id]
    @course = Course.find params[:id]
  end

  def update
    @location = Location.find params[:location_id]
    @course = Course.find params[:id]
    @course.update_attributes course_params
    redirect_to location_course_path(@location, @course)
  end

  def destroy
    @location = Location.find params[:location_id]
    @course = Course.find params[:id]
    @course.delete
    redirect_to locations_path
  end

private

  def course_params
    params.require(:course).permit(
      :name,
      :description,
      location_ids: []
      )
  end

  def location_params
    params.require(:location).permit(
      :location_name
      )
  end
end
