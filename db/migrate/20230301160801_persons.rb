class Persons < ActiveRecord::Migration[6.1]
  def change
    create_table :person, force: :cascade do |t|
      t.string "salutation"
      t.string "first_name", null: false
      t.string "last_name", null: false
      t.string "middle_name"
      t.string "ssn"
      t.date "birthdate"
      t.text "comment"
    end
  end
end
