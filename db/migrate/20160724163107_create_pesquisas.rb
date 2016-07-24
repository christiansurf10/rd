class CreatePesquisas < ActiveRecord::Migration[5.0]
  def change
    create_table :pesquisas do |t|
      t.string :nome_pesquisa
      t.string :nome
      t.integer :like_nome
      t.string :operador_email
      t.string :email
      t.integer :like_email
      t.string :operador_idade
      t.integer :idade
      t.string :operador_aritmetico_idade
      t.string :operador_estado
      t.string :estado
      t.integer :like_estado
      t.string :operador_cargo
      t.string :cargo
      t.integer :like_cargo

      t.timestamps
    end
  end
end
