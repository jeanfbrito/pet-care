class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  def index
    @pets = Pet.all.order(:name)
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pet_params)
    redirect_to @pet
  end

  def update
    @pet.update!(pet_params)
    redirect_to @pet
  end

  def destroy
    @pet.delete
    redirect_to pets_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :birthdate, :breed, :kind)
  end
end
