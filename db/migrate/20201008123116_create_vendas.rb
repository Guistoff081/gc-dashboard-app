class CreateVendas < ActiveRecord::Migration[5.1]
  def change
    create_table :vendas do |t|
      t.decimal :valor_total
      t.timestamps
    end
  end
end
