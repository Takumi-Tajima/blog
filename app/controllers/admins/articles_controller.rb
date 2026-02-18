class Admins::ArticlesController < Admins::ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.default_order
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to admins_article_path(@article), notice: '記事を作成しました。'
    else
      render :new, status: :unprocessable_content
    end
  end

  def update
    if @article.update(article_params)
      redirect_to admins_article_path(@article), notice: '記事を更新しました。'
    else
      render :edit, status: :unprocessable_content
    end
  end

  def destroy
    @article.destroy!
    redirect_to admins_articles_path, notice: '記事を削除しました。'
  end

  private

  def set_article
    @article = Article.find(params.expect(:id))
  end

  def article_params
    params.expect(article: %i[title body published_at])
  end
end
