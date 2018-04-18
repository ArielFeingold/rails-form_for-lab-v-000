class StudentsController < ApplicationController

  def new; end

  def create
    @student = Student.new(params.required(:student).permit(:first_name, :last_name))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end
end
