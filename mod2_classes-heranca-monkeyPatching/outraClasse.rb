=begin
    Cafeteria e atentende Maria 
    * nº comanda é 5142
    * mesa atendida 17 
    * itens são café e pão 
    * Pessoa, atentende Maria

    Como essa comanda pode "interagir" com o mundo?
    * pode receber um novo item
    * item pode ser removido dela 
    * pode ser fechada 

    => todo objeto tem características e comportamentos

    CLASSE é o esqueleto do OBJETO. 
    Da Classe definimos quais características e comportamentos os Objetos existirão. 
=end 

    # add comportamento na classe
class Comanda
=begin
numero=(numero)Dentro deste método, estamos pegando o valor que será enviado como parâmetro para 
numero e atribuindo em @numero.
=end
    def numero=(numero)
        @numero = numero
        # @numero = variável de instância e ela faz parte APENAS do escopo do objeto
    end

    # método para acessar o valor do atributo @numero
    def numero
        @numero
    end
    # Neste método numero (que é diferente do método numero=), 
    # nós estamos retornando o valor do atributo @numero.

    def fechar
        puts "Comanda fechada!"
    end

=begin
    Uma particularidade do Ruby é que TODO e qualquer atributo de um objeto é privado ao próprio 
    objeto. Um atributo NUNCA será manipulado ou acessado diretamente do mundo exterior ao objeto.
    MAS o objeto pode fornecer meios desses atributos serem manipulados se forma indireta.
=end

# cria um Objeto a partir da Classe 

    def atendente=(atendente)
        @atendente = atendente
    end

    def atendente
        @atendente
    end

    def mesa=(mesa)
        @mesa = mesa
    end

    def mesa 
        @mesa
    end

    def itens=(itens)
        @itens= itens
    end

    def itens 
        @itens
    end
end 

minha_comanda = Comanda.new
minha_comanda.numero = 5421
minha_comanda.atendente = 'Maria'
minha_comanda.mesa = 17
minha_comanda.itens = ['Café pingado', 'Pão de queijo']
puts "Número: #{minha_comanda.numero} | Atendente: #{minha_comanda.atendente} | Mesa: #{minha_comanda.mesa} | Itens: #{minha_comanda.itens.join(',')}"
#5421
#Comanda fechada!



