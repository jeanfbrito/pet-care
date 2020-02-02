class MedicalRecordsController < ApplicationController
  before_action :set_pet
  before_action :set_medical_record, only: [:show, :edit, :update, :destroy]
  def index
    @medical_records = @pet.medical_records.order(:created_at)
  end

  def show
  end

  def new
    @medical_record = @pet.medical_records.new
  end

  def create
    @medical_record = @pet.medical_records.create(medical_record_params)
    redirect_to pet_medical_record_path(@pet, @medical_record)
  end

  def update
    @medical_record.update!(medical_record_params)
    redirect_to pet_medical_record_path(@pet, @medical_record)
  end

  def destroy
    @medical_record.delete
    redirect_to pet_medical_records_path(@pet)
  end

  private

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

  def set_medical_record
    @medical_record = @pet.medical_records.find(params[:id])
  end

  def medical_record_params
    params.require(:medical_record).permit(:symtoms, :treatment)
  end
end
