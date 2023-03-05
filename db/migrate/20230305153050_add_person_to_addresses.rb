class AddPersonToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_reference :addresses, :person, null: false, foreign_key: true
    add_reference :phone_numbers, :person, null: false, foreign_key: true
    add_reference :emails, :person, null: false, foreign_key: true
  end
end
