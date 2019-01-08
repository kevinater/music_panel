class StudentsController < ApplicationController
  def index
    @students = Student.all
    @new_student = Student.new
  end

  def show
    @student = Student.find(params:[id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def update
    @student = Student.find(params[:id])
      if @student.update(student_params)
        @student.save
        redirect_to students_path
      else
        render :edit
      end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end

end
