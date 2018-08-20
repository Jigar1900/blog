class SearchController < ApplicationController
  def search
    if params[:q].nil?
      @articles = []
    else
      binding.pry
      @articles = Article.search params[:q]
    end
  end
end
