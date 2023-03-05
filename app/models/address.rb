class Address < ApplicationRecord
    belongs_to :person, optional: true

    validates :street, presence: true
    validates :town, presence: true
    validates :zip_code, presence: true
end