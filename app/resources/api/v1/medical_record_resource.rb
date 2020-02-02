
module Api
  module V1
    class MedicalRecordResource < JSONAPI::Resource
      attributes :symtoms, :treatment, :updated_at
      has_one :pet
    end
  end
end
