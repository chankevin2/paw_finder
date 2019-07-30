class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string "name", null: false
      t.string "animal", null: false
      t.text "description", null: false
      t.string "age", null: false
      t.string "size", null: false
      t.string "gender", null: false
      t.string "breed", null: false
    end
  end
end
