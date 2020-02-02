# == Schema Information
#
# Table name: pets
#
#  id         :bigint           not null, primary key
#  birthdate  :date
#  breed      :string           not null
#  kind       :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pet < ApplicationRecord
  has_many :medical_records
end
