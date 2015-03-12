class StaticPagesController < ApplicationController
  def index
    @aqua = Aquarelle.first
    @oil = Oil.first
    @graphics = Graphics.first
    @grattage = Grattage.first
    @gouache = Gouache.first
  end
  def general
  end
end
