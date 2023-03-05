class Person < ApplicationRecord
    self.table_name = 'person'

    has_many :emails
    has_many :addresses
    has_many :phone_numbers
    
    validates_associated :emails
    validates_associated :addresses
    validates_associated :phone_numbers

    validates :first_name, presence: true
    validates :last_name, presence: true
end