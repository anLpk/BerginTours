class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:tag].present?
      @articles = Article.tagged_with(params[:tag])
    else
      @articles = Article.all
    end
  end

  def show 
    @article = Article.find(params[:id])
    @related_articles = @article.find_related_tags
  end

  private

  def article_params
    params.require(:article).permit(:tag_list, :title, :content, :author, photos: [])
  end
end
