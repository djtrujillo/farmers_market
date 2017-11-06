class AddColumnToBasketItems < ActiveRecord::Migration[5.1]
  def change
    add_column :basket_items, :quantity, :integer
  end
end
