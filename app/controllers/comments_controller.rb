class CommentsController < ApplicationController

  def create
    @comment =  Comment.create(text: comment_params[:text], user_id: current_user.id )
    redirect_to tweet_path(@comment.tweet)
  end

  private
  def comment_params
    params.permit(:text, :tweet_id)
  end

end
