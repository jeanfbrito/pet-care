require 'rails_helper'

RSpec.describe MedicalRecord, type: :model do

  describe 'associations' do
    it { should belong_to(:pet) }
  end
end
