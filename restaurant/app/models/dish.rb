class Dish < ApplicationRecord
    has_many :order_dishes
    has_many :orders, through: :order_dishes
end
