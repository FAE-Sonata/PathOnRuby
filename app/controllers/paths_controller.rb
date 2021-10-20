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

  def edit
    @path = Path.find(params[:id])
  end

  def update
    @path = Path.find(params[:id])
    # temporary repeating: yes it violates DRY, but I don't want to deal with unintended consequences of splitting to a separate function
    attributes = path_params.clone
    attributes[:intermediate] = attributes[:intermediate].filter {|s| s.length > 0}

    if @path.update(attributes)
      redirect_to @path
    else
      render :edit
    end
  end

  def destroy
    @path = Path.find(params[:id])
    @path.destroy

    redirect_to root_path
  end

  private
    def path_params
      params.require(:path).permit(:origin, :destination, {intermediate: []} , :links_to_same_article)
      # not params...permit! (which disables Strong Parameters)
    end
end