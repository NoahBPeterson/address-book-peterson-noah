class Emails < ActiveRecord::Migration[6.1]
  def change
    create_table "emails", force: :cascade do |t|
      t.string "email_address", null: false
      t.text "comment"
    end
  end
end
