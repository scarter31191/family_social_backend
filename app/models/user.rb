class User < ApplicationRecord
    has_secure_password
    has_many :events
    has_many :comments

    validates :email, :username, :bio, presence: true
    validates :email, :username, uniqueness: true



end
