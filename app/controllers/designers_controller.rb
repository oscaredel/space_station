 class DesignersController < ApplicationController
  def show
    @designer = Designer.find(params[:id])
  end

  def index
    @designers = Designer.all
  end

  def dhome
  end

end
