class HeroesController < ApplicationController
  def index
    @heroes=Hero.all
  end
  def show
    @hero=Hero.find(params[:id])
  end
  def new
    @hero=Hero.new
  end
  def create
    @hero=Hero.new(hero_params)
    if @hero.save
      redirect_to(@hero)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def hero_params
    params.expect(hero: [ :name, :alias, :age, :id ])
  end
end
