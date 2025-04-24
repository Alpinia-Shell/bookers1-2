class BooksController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
    redirect_to books_path
    else
    render :index
    end
  end 

  def edit
  end

  def update 
  end

  def show
    
  end

  def destroy
  end 

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
