class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.timestamps
      t.references :user
      t.references :post
    end
  end
end
