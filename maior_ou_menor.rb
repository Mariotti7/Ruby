def de_boas_vindas
    puts "Bem vindo ao jogo da adivinhação!"
    puts "Qual é o seu nome?"
    nome = gets 
    puts "\n\n\n"
    puts "Olá, #{nome}"
    puts "Bora começar o jogo?"
end

def sorteio_numero_secreto
    puts "Escolha um número secreto entre 0 e 200..."
    numero_secreto = 175 
    puts "Número escolhido... que tal adivinhar esse número secreto hoje?"
    return numero_secreto # ou somente a variavel
end

def pede_um_numero(chances, limite_tentativas)
    puts "\n\n\n"
    puts "Tentativa #{chances.to_s} de #{limite_tentativas.to_s}"
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Seu chute foi #{chute}" 
    return chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto ===  chute
    if acertou
        puts "ACERTOU!"
        return true
    end

    maior = chute < numero_secreto
    if maior
        puts "O número secreto é maior"
    else
        puts "O número secreto é menor"
    end
    false
end

de_boas_vindas # chama o metodo def == definir
numero_secreto = sorteio_numero_secreto # vai retornar o valor da variavel

limite_tentativas = 5

for chances in 1..limite_tentativas # numero de vezes a repetir
    chute = pede_um_numero(chances, limite_tentativas)
    puts "\n"
    if verifica_se_acertou(numero_secreto, chute)
        break
    end
end
puts "Obrigado por jogar!" 

