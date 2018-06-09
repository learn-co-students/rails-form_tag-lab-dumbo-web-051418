class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    #code
  end

  def create
    @student = Student.create(student_params)
    redirect_to students_path
  end

  def show
    @student = Student.find(params[:id])
  end

  private
  def student_params
    params.permit(:first_name, :last_name)
  end
end
