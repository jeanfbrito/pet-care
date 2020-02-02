require 'rails_helper'

RSpec.describe Pet, type: :model do

  describe 'Scopes' do
    let!(:dog1) { create(:pet) }
    let!(:dog2) { create(:pet) }
    let!(:cat1) { create(:pet, :cat) }
    let!(:cat2) { create(:pet, :cat) }

    describe 'kind enumerator' do
      it 'returns only dogs using dog scope' do
        expect(
          described_class.dog
        ).to match_array [dog1, dog2]
      end

      it 'returns only cats using cat scope' do
        expect(
          described_class.cat
        ).to match_array [cat1, cat2]
      end
    end
  end

  describe 'associations' do
    it { should have_many(:medical_records) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:breed) }
    it { should validate_presence_of(:kind) }
  end
end
