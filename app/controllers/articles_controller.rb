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
    # need to instantiate an article so the form can be created
    @article = Article.new
  end
  def create
    # you need to whitelist the fields you want to have come in from the internet to the database
    # you require an article object with permitted keys of title and description
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      flash[:notice] = "Article was created successfully."
      redirect_to article_path(@article)
    else
      # if the article doesn't save, we want to render the new template again
      render 'new'
    end
  end
end