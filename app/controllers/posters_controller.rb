class PostersController < ApplicationController
     def new
    if current_user.admin? && user_signed_in?
    @poster = Poster.new
  else 
    redirect_to researchs_path
  end
  end
  
   def create
   @poster = Poster.new(poster_params)
  if @poster.save
    redirect_to researchs_path
  else
    render 'new'
 
  end
end
def destroy
  if current_user.admin? && user_signed_in?
  @poster = Poster.find(params[:id])
  @poster.destroy
  redirect_to researchs_path
 else
  redirect_to researchs_path
end
end
  private
  def poster_params
    params.require(:poster).permit(:image)
    
  end
end
