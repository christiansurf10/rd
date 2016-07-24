json.array!(@pesquisas) do |pesquisa|
  json.extract! pesquisa, :id, :nome_pesquisa, :nome, :like_nome, :operador_email, :email, :like_email, :operador_idade, :idade, :operador_aritmetico_idade, :operador_estado, :estado, :like_estado, :operador_cargo, :cargo, :like_cargo
  json.url pesquisa_url(pesquisa, format: :json)
end
