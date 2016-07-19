class User_InfosController < ApplicationController
  def new
    @user_info = User_Infos.new
  end

  def create
    @user_info = User_Infos.new
    if @user_info.save params[:user_info]
      redirect_to edit_user_path(@user_info)
    else
      render :new
    end
  end

  def edit
    @user_info = User_Infos.new id: params[:id]
  end

  def update
    @user_info = User_Infos.new id: params[:id]
    if @user_info.save params[:user_info]
      redirect_to edit_user_path(@user_info)
    else
      render :edit
    end
  end
end
