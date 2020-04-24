class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    #a = params[:article]
    #Article.new(title: a[:title], description: a[:description]).save
    render plain: a
  end
end
