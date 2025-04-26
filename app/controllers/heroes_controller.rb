class HeroesController < ApplicationController
  def index
    @heroes=Heroe.all
  end
  def show
    @heroe=Heroe.find(params[:id])
  end
  def new
    @heroe=Heroe.new
  end
  def create
    @heroe=Heroe.new(hero_params)
    if @heroe.save
      redirect_to(@heroe)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def hero_params
    params.expect(heroe: [ :name, :alias, :age, :id ])
  end
end
