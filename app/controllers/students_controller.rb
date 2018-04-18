class StudentsController < ApplicationController

  def new; end

  def create
    @student = Student.new(params.required(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to school_class_path(@student)
  end
end
