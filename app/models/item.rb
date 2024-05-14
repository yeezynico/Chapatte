class Item < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :price, numericality: { greater_than: 0, less_than: 1000 }, presence: true
    validates :image_url, presence: true

    
    has_many :cart_items, dependent: :destroy
    has_many :carts, through: :cart_items

    has_many :order_items
    has_many :orders, through: :order_items

end

