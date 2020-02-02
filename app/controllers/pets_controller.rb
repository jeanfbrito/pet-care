class PetsController < ApplicationController
  def index
    @pets = Pet.all.order(:name)
  end
end
