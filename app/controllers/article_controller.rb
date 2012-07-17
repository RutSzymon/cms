class ArticlesController < ApplicationController

def show
  @article = Article.find(params[:id])
  if request.path != article_path(@article)
    redirect_to @article, status: :moved_permanently
  end
end

end