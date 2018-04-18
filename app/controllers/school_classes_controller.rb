class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
	  @school_class = SchoolClass.find(params[:id])
	  @school_class.update(title: params[:title], description: params[:description])
	  redirect_to post_path(@post)
	end

  def school_class_params(*args)
    params.require(:post).permit(*args)
  end


end
