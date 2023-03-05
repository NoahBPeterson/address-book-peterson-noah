class Email < ApplicationRecord
    belongs_to :person, optional: true

    validates :email_address, presence: true
end