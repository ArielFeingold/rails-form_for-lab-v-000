class StudentsController < ApplicationController

  def new; end

  def create
    @student = Student.new(params.required(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end
end
