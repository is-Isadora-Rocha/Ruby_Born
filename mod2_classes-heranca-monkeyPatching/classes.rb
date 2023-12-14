# para executar: terminal -> entrar na pasta -> ruby classes.rb 

class Carro
end

novo_carro = Carro.new
puts "Variavel carro: #{novo_carro}"
# #{ interpolação de strings, acrescentando uma variável dentro do string }

# variável = referência para o objeto, aponta para o obj de memória 
a = "RUBY PARA INICIANTES" 
b = a
# pode-se ter outra variável apontando para o mesmo objeto

b.downcase! 
# métodos com "!" alteram o objeto por inteiro. 
puts a 