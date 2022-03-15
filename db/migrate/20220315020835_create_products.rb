class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: true, comment: '商品名'
      t.string :sub_name, comment: '副商品名'
      t.string :description, comment: '説明'

      t.timestamps
    end
  end
end
