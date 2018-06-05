class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.references :fund, foreign_key: true
      t.references :user, foreign_key: true
      t.float :allocation_share

      t.timestamps
    end
  end
end
