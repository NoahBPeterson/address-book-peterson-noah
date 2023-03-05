class Person < ApplicationRecord
    self.table_name = 'person'

    has_many :emails, dependent: :destroy
    has_many :addresses, dependent: :destroy
    has_many :phone_numbers, dependent: :destroy
    
    validates_associated :emails
    validates_associated :addresses
    validates_associated :phone_numbers

    validates :first_name, presence: true
    validates :last_name, presence: true
end