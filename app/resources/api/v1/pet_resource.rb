module Api
  module V1
    class PetResource < JSONAPI::Resource
      attributes :name, :kind, :breed, :birthdate
      has_many :medical_records
    end
  end
end
