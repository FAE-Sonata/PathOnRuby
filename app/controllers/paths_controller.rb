class PathsController < ApplicationController
  def index
    @paths = Path.all
  end

  def show
    @path = Path.find(params[:id])
  end

  def new
    @path = Path.new
  end

  def create
    @path = Path.new(path_params)

    if @path.save
      redirect_to @path
    else
      render :new
    end
  end

  private
    def path_params
      params.require(:path).permit(:origin, :destination, {intermediate: []} , :links_to_same_article)
    end
end
