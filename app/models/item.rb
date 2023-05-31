class Item < ApplicationRecord
    has_many :carts
    has_many :users, through: :carts
    has_many :orders
    has_many :users, through: :orders
end
