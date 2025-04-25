class HeroesController < ApplicationController
  def index
    @heroes=Heroe.all
  end
end
