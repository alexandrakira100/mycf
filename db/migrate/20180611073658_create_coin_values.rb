class CreateCoinValues < ActiveRecord::Migration[5.2]
  def change
    create_table :coin_values do |t|
      t.integer :historical_price
      t.references :coin, foreign_key: true

      t.timestamps
    end
  end
end
