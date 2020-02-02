
module Api
  module V1
    class MedicalRecordResource < JSONAPI::Resource
      attributes :symtoms, :treatment, :updated_at
      belongs_to :pet
    end
  end
end
