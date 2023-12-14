# nil = null 

nome_completo = "Isadora Rocha"
puts nome_completo

puts nome_completo.nil? # ? retorna "true" ou "false" 

texto = "       meu Texto completo "
puts texto.strip! # ! ele modifica a variável por completo
puts texto

# ---------------------------------------------------

# padrão de variáveis != camelcase
preco = 50
preco_unitario = 70

# função sem parametros
def muda_preco
    preco = 100
    puts preco
end

muda_preco
puts preco 
# 100
# 50

