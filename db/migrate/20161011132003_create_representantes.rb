class CreateRepresentantes < ActiveRecord::Migration
  def change
    create_table :representantes do |t|
      t.string :responsavel
      t.string :nome_fantasia
      t.string :cpf_cnpj
      t.string :telefone
      t.string :email
      t.string :cep
      t.string :endereco
      t.string :logradouro
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :status

      t.timestamps null: false
    end
  end
end
