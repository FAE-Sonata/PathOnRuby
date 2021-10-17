class PathsController < ApplicationController
  def index
    @paths = Path.all
  end

  def show
    @path = Path.find(params[:id])
  end
end
