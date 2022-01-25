class User < ApplicationRecord
    # has_secure_password
    # has_many :events
    # has_many :comments

    validates :email, :username, presence: true
    # validates :email, :username, uniqueness: true



end
