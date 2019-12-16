class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    Student.create(user_params)
    redirect_to 
  end

  private

  def user_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
