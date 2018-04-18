class SchoolClassesController < ApplicationController

  def new; end

  def create
    byebug
    @school_class = SchoolClass.new(params.required(:school_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end


end
