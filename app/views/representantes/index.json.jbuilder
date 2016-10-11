json.array!(@representantes) do |representante|
  json.extract! representante, :id, :responsavel, :nome_fantasia, :cpf_cnpj, :telefone, :email, :cep, :endereco, :logradouro, :bairro, :cidade, :estado, :status
  json.url representante_url(representante, format: :json)
end
