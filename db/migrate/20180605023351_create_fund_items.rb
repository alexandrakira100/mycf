class CreateFundItems < ActiveRecord::Migration[5.2]
  def change
    create_table :fund_items do |t|
      t.references :fund, foreign_key: true
      t.float :quantity
      t.references :coin, foreign_key: true
      t.integer :coin_purchase_price_in_cents

      t.timestamps
    end
  end
end
