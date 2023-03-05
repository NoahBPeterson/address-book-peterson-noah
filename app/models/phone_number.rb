class PhoneNumber < ApplicationRecord
    belongs_to :person, optional: true

    validates :phone_number, presence: true
end