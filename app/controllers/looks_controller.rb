class LooksController < ApplicationController
  def show
    @look = Look.find(params[:id])
  end

  def index
    @look = Look.all
  end
end
