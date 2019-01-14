class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
    @students = Student.all
     if params[:student_id]
        student = Student.find(params[:student_id])
        @cohort = @cohort.students << student
        @cohort.save
        flash[:success] = "Student added successfully!"
      else
        flash[:error] = "Student not added."
      end
  end

  def new
    @cohort = Cohort.new
  end

  def create
    @new_cohort = Cohort.create(cohort_params)
    if @new_cohort.save
      redirect_to cohorts_path
    else
      render :new
    end
  end

  def update
    @cohort = Cohort.find(params[:id])
    if @cohort.update(cohort_params)
        @cohort.save
        redirect_to cohorts_path
      else
        render :edit
      end
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    redirect_to cohorts_path
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date)
  end

end

