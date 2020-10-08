class AddProdutosReferencesToVendas < ActiveRecord::Migration[5.1]
  def change
    add_reference :vendas, :produtos, foreign_key: true
  end
end
