class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
    @courses = Course.all
  end

  def create
    @courses = Course.all
    @location = Location.create location_params
    @location.save
    redirect_to locations_path
  end

  def show
    @location = Location.find params[:id]
  end

  def edit
    @location = Location.find params[:id]
  end

  def update
    @location = Location.find params[:id]
    @location.update_attributes location_params
  end

  def destroy
    @location = Location.find params[:id]
    @location.delete
    redirect_to locations_path
  end

private

  def location_params
    params.require(:location).permit(
      :location_name,
      :location_address,
      course_ids: []
      )
  end

  def course_params
    params.require(:course).permit(
      :name
      )
  end

end
