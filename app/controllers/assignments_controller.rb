class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
  end

  def show
    @user = current_user.id
    @assignment = Assignment.find params[:id]
  end

  def new
    @user = current_user.id
    @assignment = Assignment.new

  end

  def create
    @user = current_user.id
    @assignment = Assignment.create assignment_params
    @assignment.save
    redirect_to user_assignments_path
  end

  def edit
    @user = current_user.id
    @assignment = Assignment.find params[:id]
  end

  def update
    @user = current_user.id
    @assignment = Assignment.find params[:id]
    @assignment.update_attributes course_params
    redirect_to user_assignments_path
  end

  def destroy
    @user = current_user.id
    @assignment = Assignment.find param[:id]
    @assignment.delete
    redirect_to user_assignments_path
  end

private
  params.require(:assignment).permit(
    :assignment_name,
    :requirements
    )

end
