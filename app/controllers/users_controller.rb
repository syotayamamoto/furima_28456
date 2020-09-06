class UsersController < ApplicationController

  def index
  end

  def new
    @users = User.new
  end

  def destroy
  end

  def create
    @users =Users.new(user_params)
  end


  private

  def user_params
    params.require(:user).permit（:nickname, :first_name, :family_name, :first_name_kana, :family_name_kana, :birth_date, :email, :encrypted_password　）
  end

end
