class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  def create
    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to posts_path
  end
end