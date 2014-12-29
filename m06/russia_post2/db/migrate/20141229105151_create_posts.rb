class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.float :price
      t.datetime :deliver_at
      t.datetime :delivered_at
      t.string :title
      t.string :state

      t.timestamps
    end
  end
end
