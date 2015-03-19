class ExhibitionsController < ApplicationController

  def index
    if params[:type]
      @exhibitions = params[:type].constantize.all
    else
      @exhibitions = Exhibition.all
    end
  end

  def show
    @exhibition = Exhibition.find(params[:id])
  end
end
