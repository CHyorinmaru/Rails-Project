class CreateJoinTableShoppingCartCards < ActiveRecord::Migration[5.2]
  def change
    create_join_table :shopping_carts, :cards do |t|
      t.index [:shopping_cart_id, :card_id]
      t.index [:card_id, :shopping_cart_id]
    end
  end
end
