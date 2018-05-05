class BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]

  # GET /books
  def index
    @books = Book.limit(params[:limit])
    render json: @books, meta: { total: Book.count }
  end

  # GET /books/1
  def show
    render json: @book
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def book_params
      res = ActiveModelSerializers::Deserialization.jsonapi_parse(params, polymorphic: [:publisher])
      res
    end
end
