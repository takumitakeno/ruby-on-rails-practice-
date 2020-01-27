class BooksController < ApplicationController
  def index
  	@books =Book.all
  	@book =Book.new
  end

  def show
  	@book = Book.find(params[:id])
  end

  def new
  end

  def edit
    @book= Book.find(params[:id])
  end
  def create
  	book = Book.new(book_params)
  	book.save
  	redirect_to book_path(book)
  end

  def update
    @book =Book.find(params[:id])
    list.update(list_params)
    redirect_to edit_book_path
  end

  def distroy
    @book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def top
    
  end

  private 
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
