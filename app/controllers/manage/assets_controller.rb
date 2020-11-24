class Manage::AssetsController < ApplicationController

  def index

  end



  def asset_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, profile_attributes: [:id, :first_name, :last_name])
  end

end
