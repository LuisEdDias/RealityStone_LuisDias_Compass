class Mercado

    def initialize(Produto)
        @produto = Produto
    end

    def comprar
        puts "você comprou o produto #{@produto.name} no valor de #{@produto.price}!"
    end
    