class CertificatesController < ApplicationController
     def new
    if current_user.admin? && user_signed_in?
    @certificate = Certificate.new

  else 
    redirect_to researchs_path
  end
  end
  
   def create
   @certificate = Certificate.new(certificate_params)

  if @certificate.save
    redirect_to researchs_path
  else
    render 'new'
 
  end
end
def destroy
  if current_user.admin? && user_signed_in?
  @certificate = Certificate.find(params[:id])
  @certificate.destroy
  redirect_to researchs_path
 else
  redirect_to researchs_path
end
end
private
  def certificate_params
    params.require(:certificate).permit(:file)
    
  end

end
