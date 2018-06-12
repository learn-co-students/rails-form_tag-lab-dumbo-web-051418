class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    binding.pry
    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

end
