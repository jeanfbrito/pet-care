class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.date :birthdate
      t.string :breed, null: false
      t.string :kind, null: false

      t.timestamps
    end
  end
end
