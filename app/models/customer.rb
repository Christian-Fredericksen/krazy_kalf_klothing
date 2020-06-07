class Customer < ApplicationRecord
    has_many :carts
    has_secure_password

    validates :first_name, :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: {is: 6}
end
