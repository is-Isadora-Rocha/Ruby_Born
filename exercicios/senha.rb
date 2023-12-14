class Senha
    @contador_de_senhas = 0 
    attr_accessor :numero, :paciente

    def initialize (numero, paciente)
        @numero = numero
        @paciente = paciente
    end

    def encerrar_senha
        puts "Senha Encerrada!"
    end

    def self.gerar_senha
        @contador_de_senhas += 1
    end

end

emitir_senha = Senha.new(Senha.gerar_senha, 'Paciente 1')
puts "Senha: #{emitir_senha.numero} | Paciente: #{emitir_senha.paciente}"
emitir_senha.encerrar_senha
emitir_senha2 = Senha.new(Senha.gerar_senha, 'Paciente 2')
puts "Senha: #{emitir_senha2.numero} | Paciente: #{emitir_senha2.paciente}"
emitir_senha2.encerrar_senha