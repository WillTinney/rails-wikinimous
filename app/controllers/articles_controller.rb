class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :update, :edit, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
  end

  def edit
  end

  def update
    @article.update (article_params)
  end

  def delete
    @article.destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(article_params)
  end


end
