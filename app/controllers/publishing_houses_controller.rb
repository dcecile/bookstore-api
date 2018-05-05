class PublishingHousesController < ApplicationController
  before_action :set_publishing_house, only: [:show, :update, :destroy]

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publishing_house
      @publishing_house = PublishingHouse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def publishing_house_params
      params.require(:publishing_house).permit(:name, :discount)
    end
end
