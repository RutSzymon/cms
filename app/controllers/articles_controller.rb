class ArticlesController < ApplicationController

def index
  @articles = Article.all
end

def show
  @article = Article.find(params[:id])
  if request.path != article_path(@article)
    redirect_to @article, status: :moved_permanently
  end
end

end