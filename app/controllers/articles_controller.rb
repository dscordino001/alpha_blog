class ArticlesController < ApplicationController
  def show
    # @ converts the regular variable into an instance variable
    # id will have the value of the article in the URL
    @article = Article.find(params[:id])
  end
  def index
    # code to grab all of the articles from the articles table
    @articles = Article.all
  end
  def new

  end
  def create
    # this line will render plain text of the params that are passed in to the screen
    # :article is the part of the params hash that we want to render
    render plain: params[:article]
  end
end