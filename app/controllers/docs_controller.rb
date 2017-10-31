class DocsController < ApplicationController
  def index
    @docs = Doc.all
  end
     def show
    @doc = Doc.find(params[:id])
  end
  def new
      if current_user.admin? && user_signed_in?
     @doc = Doc.new
   else
     redirect_to docs_path
    end 
  end
  def create
   @doc = Doc.new(doc_params)
  if @doc.save
    redirect_to docs_path
  else
    render 'new'
  end
end
    


def destroy
  if current_user.admin? && user_signed_in?
  @doc = Doc.find(params[:id])
  @doc.destroy
  redirect_to docs_path
 else
  redirect_to docs_path
end
end
private
  def doc_params
    params.require(:doc).permit(:name, :file)
    
  end
end
