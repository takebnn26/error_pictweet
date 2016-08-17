class UsersController < ApplicationController
  def show
    @tweets = Tweet.where(params[:id]).order("created_at DESC").page(params[:page]).per(5)
  end
end
