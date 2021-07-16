class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end
  
  def create
    if Animal.create!(animal_params)
      redirect_to animals_path
    else
      reder :new
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name)
  end
end
