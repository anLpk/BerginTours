class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index 
    @articles = Article.all
  end

  def show 
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :author, photos: [])
  end
end
