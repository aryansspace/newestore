class PriceNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price, :decimal, null: true
  end
end
