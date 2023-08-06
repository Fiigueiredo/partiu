Algoritmo "Partiu - Agencia de Viagens"
// AGORA VOCÊ PODE REALIZAR
// Cadastro de Cliente
// Cadastro de Destino
// Consulta de Cliente
// Consulta de Destino

Const

   maximoCad = 2    //variável constante para número máximo de usuários

Var

   name              :vetor [1..maximoCad] de caracter
   destination       :vetor [1..maximoCad] de caracter
   user              :caracter   //usuário da plataforma
   i, menu, n        :inteiro

Inicio

mudaCor("amarelo","frente")
limpatela

escreval("Olá, seja muito bem vindo(a) a")
escreval("Partiu™, Agencia de viagens que mais cresce no Brasil")
escreval("")

escreval("Eu sou a 'Tutti', sua assistente virtual aqui na Partiu™!")
escreva("Não nos conhecemos, então...")
escreva("Qual seu nome? ")
leia(user)

limpatela
escreval("Prazer ",user,", é muito bom te conhecer!")
escreval("Desculpe se houve uma mudança na sua tela, precisarei limpar sua tela sempre para que fique algo visual bacana pra você e não muito poluído como agora.")
escreval("Entretanto, não precisa se preocupar pois nenhuma alteração sem seu concentimento será realizada.")

escreval("")
escreval("Oque você deseja fazer hoje ",user,"?")

repita
   escreval("")
   escreval("'Opção 1' - Entrar")
   escreval("'Opção 0' - Sair")
   escreval("")
   escreva("Seleciona uma opção: ")
   leia(menu)

   escolha menu

   caso 1
      limpatela
      escreval(user, ", escolha agora uma das opções, sendo: ")
      repita
         escreval("")
         escreval("[1] - Cadastrar Cliente")
         escreval("[2] - Cadastrar Destino")
         escreval("[3] - Consulta de clientes")
         escreval("[4] - Consulta de destinos")
         escreval("[0] - Sair")
         escreval("")

         escreva("Seleciona uma opção: ")
         leia(menu)

         escolha menu

         caso 1
            limpatela
            escreval("Muito bem ",user,", vamos começar!")

            para i de 1 ate n faca
               escreva("Digite o nome do ",i,"º cliente: ")
               leia(name[i])

               escreva("Digite o destino de ",name[i],": ")
               leia(destination[i])
            fimpara


         caso 2
            limpatela

            para i de 1 ate maximoCad faca
               escreva("Digite o destino do cliente: ")
               leia(destination[i])
            fimpara


         caso 3
            limpatela

            para i de 1 ate maximoCad faca
               escreval(i,"° nome: ",name[i],".")
            fimpara


         caso 4
            limpatela

            para i de 1 ate maximoCad faca
               escreval(i,"° destino: ",destination[i],".")
            fimpara


         caso 0
            limpatela
            escreval("Tutti diz: - 'Cambio, desligo...'")


         outrocaso
            escreval("Ih, essa opção é inválida, tente novamente...")


         fimescolha
      ate menu = 0


   caso 0
      limpatela
      escreval("Até logo ",user,"!")


   outrocaso
      escreval("Opção inválida, tente novamente...")


   fimescolha
ate menu = 0

Fimalgoritmo