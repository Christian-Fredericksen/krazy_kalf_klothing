class Customer < ApplicationRecord
    has_many :carts
    has_secured_password
end
