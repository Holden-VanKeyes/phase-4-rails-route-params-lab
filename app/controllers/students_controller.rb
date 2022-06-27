class StudentsController < ApplicationController

  def index
    students = Student.where(first_name:params[:first_name], last_name:params[:last_name])
    render json: students
  end

  def show
   student = Student.find(params[:id])
  # Student.second
  render json: student
  end

end
