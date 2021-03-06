class ArticlesController < ApplicationController
  before_action :authenticate_user!
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_url
  end

  def edit
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_url
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_url
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
