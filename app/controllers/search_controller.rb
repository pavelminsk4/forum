class SearchController < ApplicationController
  def index

  end

  def results
    @posts = Post.where('title LIKE ?', "%#{ params[:query]}%")
  end
end
