class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    user = User.find(params[:micropost_id])
    current_user.favorite(user)
    flash[:success] = 'タスクをお気に入りに追加しました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:micropost_id])
    current_user.unfavorite(user)
    flash[:success] = 'タスクのお気に入りを解除しました。'
    redirect_to user
  end
end