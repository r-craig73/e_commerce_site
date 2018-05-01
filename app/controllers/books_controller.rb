class BooksController < ApplicationController

  def show
    @response = Book.get_bestseller_list()
  end

end
