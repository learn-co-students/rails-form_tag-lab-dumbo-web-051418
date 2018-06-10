class StudentsController < ApplicationController
  def index
    @students = Student.all
    render :index
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end

  def new
    @student = Student.new
    render :new
  end

  def create
    student = Student.create(student_params)
    redirect_to students_path
  end

  private
  def student_params
    params.permit(:first_name, :last_name)
  end

end
