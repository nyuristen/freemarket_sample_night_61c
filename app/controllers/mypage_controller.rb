class MypageController < ApplicationController

  before_action :authenticate_user!
  before_action :set_items, only: [:listed_all]

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


  private
  def address_params
    params.require(:address).permit(:postal_code, :city, :prefecture, :street, :building).merge(user_id: current_user.id)
  end
  def set_items
    @gifts = Gift.where(user_id: "#{current_user.id}")
  end
end

