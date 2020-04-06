class MypageController < ApplicationController

  before_action :authenticate_user!
  before_action :set_items, only: [:listed_all, :listed_listing, :listed_negotiating, :listed_soldout]

  def index
    # @products = Product.page(params[:page]).per(10)
  end
  def profile
  end
  def identification 
    @address= Address.find_by(user_id: current_user.id)  
  end
  def listed_all
  end
  def listed_listing
  end
  def listed_negotiating
  end
  def listed_soldout
  end

  private
  def address_params
    params.require(:address).permit(:postal_code, :city, :prefecture, :street, :building).merge(user_id: current_user.id)
  end
  def set_items
    @gifts = Gift.where(user_id: "#{current_user.id}")
  end
end

