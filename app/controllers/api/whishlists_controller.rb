module Api
  class WhishlistsController < ApplicationController
    protect_from_forgery with: :null_session
    
    def create
      whishlist = Whishlist.create!(whishlist_params)
      respond_to do |format|
        format.json do
          render json: whishlist.to_json, status: :ok
        end
      end
    end

    def destroy
      whishlist = Whishlist.find!(params[:id])
      whishlist.destroy()
      respond_to do |format|
        format.json do
          render json: '', status: 204
        end
      end
    end

    private
    def whishlist_params
      params.permit(:user_id, :property_id)
  end
end
