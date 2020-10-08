class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :marca
      t.integer :quantidade
      t.decimal :price

      t.timestamps
    end
  end
end
