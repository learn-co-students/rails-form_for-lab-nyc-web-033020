class SchoolClassesController < ApplicationController
  def new
    @school = SchoolClass.new
  end

  def create
    @school = SchoolClass.create(school_class_params(:title, :room_number))

    redirect_to school_class_path(@school)
  end

  def show
    @school = SchoolClass.find(params[:id])
  end

  def edit
    @school = SchoolClass.find(params[:id])
  end

  def update
    @school = SchoolClass.update(school_class_params(:title, :room_number))

    redirect_to school_class_path(@school)
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(:title, :room_number)
  end
end
