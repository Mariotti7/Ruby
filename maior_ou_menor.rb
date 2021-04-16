def de_boas_vindas
    puts "Bem vindo ao jogo da adivinhação!"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n"
    puts "Olá, #{nome}"
    puts "Bora começar o jogo?"
end

def sorteio_numero_secreto
    puts "Escolha um número secreto entre 0 e 200..."
    numero_secreto = rand(200) 
    puts "Número escolhido... que tal adivinhar esse número secreto hoje?"
    return numero_secreto # ou somente a variavel
end

def pede_um_numero(chutes, chances, limite_tentativas)
    puts "\n\n\n"
    puts "Tentativa #{chances.to_s} de #{limite_tentativas.to_s}"
    puts "Chutes até agora #{chutes.to_s}"
    puts "Entre com o número"
    chute = gets.strip
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

pontos_ate_agora = 1000.0
limite_tentativas = 5
chutes = []

for chances in 1..limite_tentativas # numero de vezes a repetir

    chute = pede_um_numero(chutes, chances, limite_tentativas)
    chutes << chute # << add um elemento no array

    pontos_a_perder = (chute - numero_secreto).abs / 2.0 # metodo abs (absoluto) retorna o valor com o sinal (positivo/negativo)
    
    pontos_ate_agora -= pontos_a_perder

    puts "\n"
    if verifica_se_acertou(numero_secreto, chute)
        break
    end
end

puts "Você ganhou #{pontos_ate_agora} pontos!"

puts "Obrigado por jogar!" 