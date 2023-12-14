class Carro

    def velocidade_max
        250 #return é a última linha
    end

    #método interno somente dentro da classe Carro
    def add_marca(marca)
        @marca = marca
    end 

=begin
    Uma particularidade do Ruby é que TODO e qualquer atributo de um objeto é privado ao próprio 
    objeto. Um atributo NUNCA será manipulado ou acessado diretamente do mundo exterior ao objeto.
    MAS o objeto pode fornecer meios desses atributos serem manipulados se forma indireta.
    
=end

    def marca 
        @marca
    end

end

carro = Carro.new
carro.add_marca("Fiat")
puts carro.marca
puts carro.velocidade_max
