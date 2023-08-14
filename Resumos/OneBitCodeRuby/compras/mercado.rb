class Mercado
    attr_accessor :produto

    def initialize(produto)
        @produto = produto
    end

    def comprar
        puts "*****************************************************************"
        puts "você comprou o produto #{@produto.name} no valor de #{@produto.price}!"
        puts "*****************************************************************"
    end
end