class BookmarksController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'Micropostをお気に入りしました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'Micropostのお気に入りを解除しました。'
    redirect_back(fallback_location: root_path)
  end
end
