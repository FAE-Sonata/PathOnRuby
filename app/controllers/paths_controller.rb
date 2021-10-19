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
    attributes = path_params.clone
    attributes[:intermediate] = attributes[:intermediate].filter {|s| s.length > 0}
    @path = Path.new(attributes)

    if @path.save
      redirect_to @path
    else
      render :new
    end
  end

  private
    def path_params
      params.require(:path).permit(:origin, :destination, {intermediate: []} , :links_to_same_article)
      # not params...permit! (which disables Strong Parameters)
    end
end