class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
     def show
    @courses = Course.find(params[:id])
  end
  def new
      if current_user.admin? && user_signed_in?
     @course = Course.new
   else
     redirect_to courses_path
    end 
  end
  def create
   @course = Course.new(course_params)
  if @course.save
    redirect_to courses_path
  else
    render 'new'
  end
end
    


def destroy
  if current_user.admin? && user_signed_in?
  @course = Doc.find(params[:id])
  @course.destroy
  redirect_to courses_path
 else
  redirect_to courses_path
end
end
private
  def course_params
    params.require(:course).permit(:title, :file, :description)
    
  end
end
