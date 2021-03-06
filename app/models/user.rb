class User < ApplicationRecord
    has_secure_password

    has_many :watchlist_items, dependent: :destroy

    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: true
end
