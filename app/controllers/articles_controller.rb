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
end