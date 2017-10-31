class ResearchsController < ApplicationController
  def index
    @certificates = Certificate.all
    @books = Book.all
    @posters = Poster.all
  end

  def new
    if current_user.admin? && user_signed_in?
    @certificate = Certificate.new
    @book = Book.new
    @poster = Poster.new
  else 
    redirect_to researchs_path
  end
  end
  
   def create
   @certificate = Certificate.new(certificate_params)
   @book = Book.new(book_params)
   @poster = Poster.new(poster_params)
  if @certificate.save || @certificate.save || @certificate.save
    redirect_to researchs_path
  else
    render 'new'
 
  end
end
private
  def certificate_params
    params.require(:certificate).permit(:file)
    
  end
  private
  def book_params
    params.require(:book).permit(:title, :file)
    
  end
  private
  def poster_params
    params.require(:project).permit(:image)
    
  end
end
