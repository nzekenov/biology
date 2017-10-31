class ProjectsController < ApplicationController
     def index
    @projects = Project.all
  end
    def show
    @project = Project.find(params[:id])

  end
 
    def new
    if current_user.admin? && user_signed_in?

    @project = Project.new

  else 
    redirect_to projects_path
  end
  end
  
   def create

   @project = Project.new(project_params)

  if @project.save
    redirect_to projects_path
  else
    render 'new'
 end
  end
  def destroy
  if current_user.admin? && user_signed_in?
  @project = Project.find(params[:id])
  @project.destroy
  redirect_to projects_path
 else
  redirect_to projects_path
    end
end

  private
  def project_params
    params.require(:project).permit(:title, :poster, :slide, :avatar, :diplom)
    
  end
end
