class ArticlesController < ApplicationController

def show
  @site = Site.find(params[:id])
  if request.path != site_path(@site)
    redirect_to @site, status: :moved_permanently
  end
end

end