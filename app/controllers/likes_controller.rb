class LikesController < ApplicationController
  def create 
    tweet = Tweet.find(params[:tweet_id])
    user = User.find(session[:user_id])
    user.like_tweets << tweet
    redirect_to root_path
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.likes.find_by(user_id: session[:user_id]).destroy
    redirect_to root_path
  end
end
