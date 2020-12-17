class UpkeepsController < ApplicationController
  def index
    render json: Upkeep.all
  end
end
