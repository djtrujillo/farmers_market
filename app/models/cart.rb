class Cart
  attr_reader :contents
  def initialize(initial_contents)
    @contents = initial_contents || {}
  end

  def add_basket(id)
    contents[id.to_s] = (contents[id.to_s] || 0) + 1
  end

  def count_of(id)
    contents[id.to_s].to_i
  end

  def basket_and_quantity
    baskets = {}
    contents.each do |basket_id, quantity|
      baskets[Basket.find(basket_id)] = quantity
    end
    baskets
  end
end
