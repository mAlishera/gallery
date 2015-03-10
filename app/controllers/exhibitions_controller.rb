class ExhibitionsController < ApplicationController

  def index
    if params[:type] == 'Aquarelle'
      @exhibitions = Aquarelle.all
    elsif params[:type] == 'Oil'
      @exhibitions = Oil.all
    elsif params[:type] == 'Grattage'
      @exhibitions = Grattage.all
    elsif params[:type] == 'Gouache'
      @exhibitions = Gouache.all
    elsif params[:type] == 'Graphics'
      @exhibitions = Graphics.all
    else
      @exhibitions = Exhibition.all
    end
  end

  def show
    @exhibition = Exhibition.find(params[:id])
  end
end
