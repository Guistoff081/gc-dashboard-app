json.extract! produto, :id, :nome, :tipo, :quantidade, :valor, :created_at, :updated_at
json.url produto_url(produto, format: :json)
