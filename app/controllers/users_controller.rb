class UsersController < ApplicationController
  def new
  	def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
  end
end
