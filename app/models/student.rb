class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  def show
    @student = Student.find(params[:id])
  end
  def index
    @students = Student.all
  end
  def create
    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end
end