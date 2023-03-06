class User < ApplicationRecord
    has_secure_password
    
    has_many :person

    validates :username, presence: true
    validates :password_digest, presence: true
end
