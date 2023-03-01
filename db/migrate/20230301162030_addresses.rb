class Addresses < ActiveRecord::Migration[6.1]
  def change
    create_table "addresses", force: :cascade do |t|
      t.string "street", null: false
      t.string "town", null: false
      t.string "zip_code", null: false
      t.string "state"
      t.string "country"
    end
  end
end
