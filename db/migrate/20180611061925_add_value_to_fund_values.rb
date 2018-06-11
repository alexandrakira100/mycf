class AddValueToFundValues < ActiveRecord::Migration[5.2]
  def change
    add_column :fund_values, :value, :integer
  end
end
