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
    @student = Student.create(student_params)
    redirect_to show: @student
    # redirect_to new_student_path
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
