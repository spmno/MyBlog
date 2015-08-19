class WelcomeController < ApplicationController

  def index
    @articles = Article.page(params[:page]).per(10)
    @shared_links = SharedLink.all
  end

  def about

  end

end
