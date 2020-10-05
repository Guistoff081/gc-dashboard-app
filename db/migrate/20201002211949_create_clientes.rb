class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.bigint :cpf
      t.string :telefone
      t.text :endereco

      t.timestamps
    end
  end
end
