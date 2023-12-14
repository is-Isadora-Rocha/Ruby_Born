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
    # vamos fazer com que a Comanda gere seu próprio número em ordem de criação. 
    # Seguindo o raciocínio, a primeira comanda receberá o número #1, a segunda o número #2...
    @contador_de_comandas = 0
=begin
    Com essa variável criada, que podemos chamar de atributo estático porque vai possuir o mesmo valor 
    em todos os objetos, vamos criar também um método para gerar o número da comanda a partir dessa variável.
=end
#    attr_reader :numero, :atendente, :mesa, :itens #getters
#    attr_writer :numero, :atendente, :mesa, :itens #setters
    attr_accessor :numero, :atendente, :mesa, :itens # getters e setters

=begin
O attr_reader é um método interno do Ruby que está pegando este Array de valores
     :numero, :atendente, :mesa e :itens e fazendo, por baixo dos panos, a criação daqueles 
     quatro métodos que acabamos de remover.
=end

=begin

    numero=(numero)Dentro deste método, estamos pegando o valor que será enviado como parâmetro para 
    numero e atribuindo em @numero.

    O método de escrita chamado de Setters, utilizamos para atribuir algum valor num atributo. 
    Métodos que fazem isso:  eles tem um = no final e são eles: numero=, atendente=, mesa= e itens=. Este são métodos Setters.
    No caso dos Getters eles não tem nenhum caractere especial no nome, mas olhando o corpo do método você é capaz de inferir. 
        Temos: numero, mesa, atendente e itens.

    Mas pra não precisarmos ficar criando sempre esses métodos, o Ruby fornece pra gente meios de criá-los automaticamente.
    Para Getters, os métodos criados especificamente para ler o valor de um atributo, podemos utilizar o attr_reader.

    Nós vamos REMOVER estes métodos e adicionar no topo da classe Comanda o attr_reader

=end

# Se uma Comanda não deveria existir sem um número, sem uma mesa e sem uma pessoa que atenda, 
# podemos exigir que ela só seja instanciada com o número, com a mesa e com atentende. 

    def initialize (numero, mesa, atendente)
        # forma do initialize existe de maneira implícita: vazio 
        # construtor = nele que pode informar os valores com quais queremos que nossos objetos sejam criados.
        @numero = numero
        @mesa = mesa
        @atendente = atendente
        @itens = []
    end



    ################################ MÉTODOS REMOVIDOS PARA attr_reader na Comanda ##########################################
=begin
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
=end 
    def fechar
        puts "Comanda fechada!"
    end

    def self.gerar_num
        @contador_de_comandas += 1
    end
=begin
    Quando colocamos este self na frente de um método, ele é criado na própria classe, ou seja, 
    é um método estático. E neste método estamos pegando o valor do @contador_de_comandas, 
    somando o valor 1, reatribuindo o novo valor na própria própria variável e retornado. 
    E pelo fato dele ser um método estático, nos conseguimos acessar o valor de um atributo estático 
    do mesmo jeito que acessamos o valor de um atributo do objeto num método do objeto.
=end

=begin
    Uma particularidade do Ruby é que TODO e qualquer atributo de um objeto é privado ao próprio 
    objeto. Um atributo NUNCA será manipulado ou acessado diretamente do mundo exterior ao objeto.
    MAS o objeto pode fornecer meios desses atributos serem manipulados se forma indireta.


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
=end

end 

#minha_comanda = Comanda.new #Objeto = instância | criar um objeto = instanciar
#minha_comanda.numero = 5421
#minha_comanda.atendente = 'Maria'
#minha_comanda.mesa = 17
#minha_comanda.itens = ['Café pingado', 'Pão de queijo']


# com o Initialize, a Comanda.new precisa ser chamado com 3 parâmetros. 
minha_comanda = Comanda.new(Comanda.gerar_num, 17, 'Maria')
minha_comanda.itens = ['Pão com queijo', 'Café']
puts "Número: #{minha_comanda.numero} | Atendente: #{minha_comanda.atendente} | Mesa: #{minha_comanda.mesa} | Itens: #{minha_comanda.itens.join(',')}"

segunda_comanda = Comanda.new(Comanda.gerar_num, 13, 'João')
segunda_comanda.itens = ['Capuccino com Chatilly', 'Coxinha Assada']
puts "Número: #{segunda_comanda.numero} | Atendente: #{segunda_comanda.atendente} | Mesa: #{segunda_comanda.mesa} | Itens: #{segunda_comanda.itens.join(',')}"

terceira_comanda = Comanda.new(Comanda.gerar_num, 9, 'Maria')
terceira_comanda.itens = ['Café coado', 'Pastel de Frango']
puts "Número: #{terceira_comanda.numero} | Atendente: #{terceira_comanda.atendente} | Mesa: #{terceira_comanda.mesa} | Itens: #{terceira_comanda.itens.join(',')}"

