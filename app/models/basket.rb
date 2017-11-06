class Basket < ApplicationRecord
  belongs_to :user
  has_many :basket_items
  has_many :items, through: :basket_items

  def add(item_hash)
    item_hash.each do |item, quantity|
      items << item
      basket_item = BasketItem.find_by(basket: self, item_id: item.id)
      basket_item.update(quantity: quantity)
    end
  end


end
