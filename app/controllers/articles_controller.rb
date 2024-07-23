class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
  end
  def create
    Article.create(article_params)
    redirect_to '/'
  end
  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to root_path
  end
  def edit
    @article = Article.find(params[:id])
  end
  def update
    article = Article.find(params[:id])
    article.update(article_params)
    redirect_to root_path
  end
  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comments = @article.comments
  end

  private
  def article_params
    params.require(:article).permit(:name, :image, :text)
  end
end
