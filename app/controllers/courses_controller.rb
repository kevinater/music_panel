class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @courses = Course.new
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
