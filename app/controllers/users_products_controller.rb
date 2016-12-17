class UsersProductsController < ApplicationController
  def index
    @user_products = current_user.products
  end
end
