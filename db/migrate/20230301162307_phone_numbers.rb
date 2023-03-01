class PhoneNumbers < ActiveRecord::Migration[6.1]
  def change
    create_table "phone_numbers", force: :cascade do |t|
      t.string "phone_number", null: false
      t.text "comment"
    end
  end
end
