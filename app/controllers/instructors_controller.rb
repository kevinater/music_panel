class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
    @new_instructor = Instructor.new
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.create(instructor_params)
        redirect_to instructors_path
  end

  def update
    @instructor = Instructor.find(params[:id])
      if @instructor.update(instructor_params)
        @instructor.save
        redirect_to instructors_path
      else
        render :edit
      end
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def destroy
  @instructor = Instructor.find(params[:id])
    @instructor.destroy
    redirect_to instructors_path
  end

  private

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :age, :salary, :education)
  end
end
