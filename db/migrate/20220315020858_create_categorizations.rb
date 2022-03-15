class CreateCategorizations < ActiveRecord::Migration[6.1]
  def change
    create_table :categorizations do |t|
      t.references :category
      t.references :product

      t.timestamps
    end
  end
end
