class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
    @new_instructor = Instructor.new
  end

  def show

  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.create(instructor_params)
        redirect_to instructors_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :age, :salary, :education)
  end
end
