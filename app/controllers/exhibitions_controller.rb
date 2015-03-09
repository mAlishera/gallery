class ExhibitionsController < ApplicationController

  def index
    if params[:type] == 'Aquarelle'
      @exhibitions = Exhibition.where(type: "Aquarelle")
    elsif params[:type] == 'Oil'
      @exhibitions = Exhibition.where(type: "Oil")
    elsif params[:type] == 'Grattage'
      @exhibitions = Exhibition.where(type: "Grattage")
    elsif params[:type] == 'Gouache'
      @exhibitions = Exhibition.where(type: "Gouache")
    elsif params[:type] == 'Graphics'
      @exhibitions = Exhibition.where(type: "Graphics")
    else
      @exhibitions = Exhibition.all
    end
  end

  def show
    @exhibition = Exhibition.find(params[:id])
  end
end
