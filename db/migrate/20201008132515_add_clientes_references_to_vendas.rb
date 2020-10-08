class AddClientesReferencesToVendas < ActiveRecord::Migration[5.1]
  def change
    add_reference :vendas, :clientes, foreign_key: true
  end
end
