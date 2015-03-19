class ExhibitionsController < ApplicationController

  def index
    if %w{Oil Gouache Grattage Graphics Aquarelle}.include?(params[:type])
      @exhibitions = params[:type].constantize.all
    else
      @exhibitions = Exhibition.all
    end
  end

  def show
    @exhibition = Exhibition.find(params[:id])
  end
end
