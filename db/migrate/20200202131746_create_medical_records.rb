class CreateMedicalRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_records do |t|
      t.references :pet
      t.text :symtoms
      t.text :treatment

      t.timestamps
    end
  end
end
