class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.decimal :preco
      t.text :descricao
      t.string :estabelecimento
      t.string :endereco
      t.date :fim_promocao

      t.timestamps null: false
    end
  end
end
