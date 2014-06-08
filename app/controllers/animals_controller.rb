class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]
  before_action :set_race

  def index
    @animals = race_class.all
  end

  def show
  end

  def new
    @animal = race_class.new
  end

  def edit
  end

  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      redirect_to @animal, notice: "#{race} was successfully created."
    else
      render action: 'new'
    end
  end

  def update
    if @animal.update(animal_params)
      redirect_to @animal, notice: "#{race} was successfully created."
    else
      render action: 'edit'
    end
  end


  def destroy
    @animal.destroy
    redirect_to animals_url
  end

  private

  def set_race
    @race = race
  end

  def race
    Animal.races.include?(params[:type]) ? params[:type] : "Animal"
  end

  def race_class
    race.constantize
  end

  def set_animal
    @animal = race_class.find(params[:id])
  end

  def animal_params
    params.require(race.underscore.to_sym).permit(:name, :race, :age)
  end

end
