class User < ApplicationRecord
    validates :email, :session_token, uniqueness: true
    validates :password, length: { minimum: 6, allow_nil: true }
    validates :email, :password_digest, :session_token, :presence: true

end
