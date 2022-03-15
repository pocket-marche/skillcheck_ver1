class CreateVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :variants do |t|
      t.references :product, index: true, null: false, comment: '商品ID'
      t.string :state, null: false, default: 'active', comment: '状態'
      t.integer :price, null: false, default: 0, comment: '価格'
      t.string :currency, default: 'JPY', null: false, comment: '通過'
      t.string :measurement, comment: '説明'

      t.timestamps
    end
  end
end
