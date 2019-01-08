class StudentsController < ApplicationController
  def index
    @students = Student.all
    @new_student = Student.new
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
