# frozen_string_literal: true

class AuthorsController < ApplicationController
  before_action :set_author, only: %i[show update destroy]

  # GET /authors/1
  def show
    render json: @author, include: ["books"]
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_author
    @author = Author.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def author_params
    params.require(:author).permit(:name)
  end
end
