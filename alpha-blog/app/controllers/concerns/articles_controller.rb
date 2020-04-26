class ArticlesController < ApplicationController
  before_action :find_article, only: [:edit, :update, :destroy, :show]

  def show
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_from_param)
    if @article.save
      flash['notice'] = 'Article was created successfully'
      redirect_to @article
    else
      render 'articles/new'
    end
  end

  def update
    if @article.update(article_from_param)
      flash['notice'] = 'Article was updated successfully'
      redirect_to @article
    else
      render 'articles/edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def find_article
    @article = Article.find params[:id]
  end

  def article_from_param
    params.require(:article).permit :title, :description
  end
end
