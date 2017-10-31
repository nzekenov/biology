class BooksController < ApplicationController
     def new
    if current_user.admin? && user_signed_in?

    @book = Book.new

  else 
    redirect_to researchs_path
  end
  end
  
   def create

   @book = Book.new(book_params)

  if @book.save
    redirect_to researchs_path
  else
    render 'new'
 
  end
end
def destroy
  if current_user.admin? && user_signed_in?
  @book = Book.find(params[:id])
  @book.destroy
  redirect_to researchs_path
 else
  redirect_to researchs_path
end
end

  private
  def book_params
    params.require(:book).permit(:title, :file)
    
  end

end
