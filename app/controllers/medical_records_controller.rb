class MedicalRecordsController < ApplicationController
  before_action :set_pet
  def index
    @medical_records = @pet.medical_records.order(:created_at)
  end

  private

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end
end
