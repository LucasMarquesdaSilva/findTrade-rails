class UsersAccountController < ApplicationController

  def index
    @user_account = current_user
  end
end
