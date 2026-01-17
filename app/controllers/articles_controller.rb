class ArticlesController < ApplicationController
  def index
    @articles = Article.published.default_order
  end

  def show
    @article = Article.find(params.expect(:id))
  end
end
