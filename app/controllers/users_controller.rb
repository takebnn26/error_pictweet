class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @tweets = Tweet.where(params[:id]).order("created_at DESC").page(params[:page]).per(5)
  end
end
