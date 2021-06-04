class UsersController < ApplicationController

  def show
   @user = current_user
   @kids = Kid.where(user_id: @user.id)
  end

end
