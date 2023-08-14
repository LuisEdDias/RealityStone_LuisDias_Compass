require_relative 'produto'
require_relative 'mercado'

produto = Produto.new("Computador", 5000)
mercado = Mercado.new(produto)

mercado.comprar
