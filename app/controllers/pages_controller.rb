class PagesController < ApplicationController
  def index
    @splash_articles = Article.all
  end
end
