# == Schema Information
#
# Table name: medical_records
#
#  id         :bigint           not null, primary key
#  symtoms    :text
#  treatment  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pet_id     :bigint
#
# Indexes
#
#  index_medical_records_on_pet_id  (pet_id)
#

FactoryBot.define do
  factory :medical_record do
    pet
    symtoms { Faker::TvShows::SiliconValley.quote }
    treatment { Faker::TvShows::SiliconValley.quote }
  end
end
