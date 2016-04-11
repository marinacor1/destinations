class DestinationsController < ApplicationController
  def new
  end

  def index
    @destinations = Destination.all
  end

  def create
    @destination = Destination.create(param_filter)
    redirect_to @destination
  end

  def show
    @destination = Destination.find(params[:id])
  end

  private

  def param_filter
    params.require(:destination).permit(:name, :url_path)
  end
end
