Algoritmo "Partiu™ | Agência de Viagens"
// Disciplina : [Linguagem e Lógica de Programação]
// Professor  : Flávio Motta
// Descrição  : Cadastro e consulta de passageiros
// Autor(a)   : Levi Livinston Mendes Figueiredo (SQUAD08)
// Data atual : 20/09/2023

Const
   //ANTES DE COMEÇAR INDIQUE A QUANTIDADE DE CADASTROS!!!!!!!!!!!!!!!!!
   max_itens = 2

Var
   nome, sobrenome, sexo, cityOrigin, cityDestination : vetor [1..max_itens] de caracter
   idade, documento : vetor [1..max_itens] de inteiro
   user, scanner : caracter
   menu : inteiro


   //FUNÇÕES E PROCEDIMENTOS
procedimento Welcome
inicio
   limpatela
   escreval("Olá ",user,", muito prazer em conhecer você.")
   escreval("Meu nome é Tutti™, sou sua assistente virtual aqui na Partiu™, Agencia de viagens que mais cresce no Brasil!")
   escreval("")

   escreva("Pressione <enter> para continuar...")
   leia(scanner)
   limpatela

   escreva(user,", digite seu sexo <M/F>: ")
   leia(scanner)
   limpatela

   se ((scanner = "M") ou (scanner = "m") ou (scanner = "MASCULINO") ou (scanner = "masculino") ou (scanner = "Masculino")) então
   Mudacor("Amarelo", "FRENTE")

senao
   se ((scanner = "F") ou (scanner = "f") ou (scanner = "FEMININO") ou (scanner = "feminino") ou (scanner = "Feminino")) então
   Mudacor("Vermelho", "FRENTE")
fimse
fimse


escreval(user, ", te apresento agora um menu de opções, selecione conforme suas necessidades para continuar!")
escreval("")
fimprocedimento





//OPÇÃO DE CADASTRO
Procedimento Cadastro
Var
   i : Inteiro

Inicio
   para i de 1 ate max_itens faça
      escreval("Entre com os dados do",i,"° passageiro;")
      escreval("")

      escreva("Nome: ")
      leia(nome[i])

      escreva("Sobrenome: ")
      leia(sobrenome[i])

      escreva("Idade: ")
      leia(idade[i])

      escreva("Sexo: ")
      leia(sexo[i])

      escreva("Nº do documento: ")
      leia(documento[i])

      escreva("Cidade de origem: ")
      leia(cityOrigin[i])

      escreva("Cidade de destino: ")
      leia(cityDestination[i])

      escreval("")
      escreva("Deseja salvar o cadastro <S/N>: ")
      leia(scanner)

      se ((scanner = "S") ou (scanner = "s") ou (scanner = "SIM") ou (scanner = "sim")) então
         nome[i] := nome[i]
         sobrenome[i] := sobrenome[i]
         idade[i] := idade[i]
         cityOrigin[i] := cityOrigin[i]
         cityDestination[i] := cityDestination[i]

         limpatela
         escreval("Passageiro ",nome[i]," ",sobrenome[i]," cadastrado com sucesso!")

         escreval("")
         escreva("Pressione <enter> para continuar...")
         leia(scanner)
         limpatela

      senão
         se i >= 0 então
            i := i - 1
         fimse
      fimse
   fimpara
FimProcedimento





//OPÇÃO DE CONSULTA
Procedimento Consulta
Var
   i : inteiro

Inicio
   escreval(user,", segue a lista de passageiros cadastrados.. ")
   para i de 1 ate max_itens faça
      escreval("")
      escreval("----------",i,"º Passageiro ----------")
      escreval("Nome: ",nome[i]," ",sobrenome[i])
      escreva("Idade:",idade[i],"     ")
      escreva("Sexo: ",sexo[i],"     ")
      escreval("Documento:",documento[i])
      escreval("Viagem: ",cityOrigin[i]," - ",cityDestination[i])
   fimpara

   escreval("")
   escreva("Pressione <enter> para continuar...")
   leia(scanner)
   limpatela

   escreval("Oque deseja fazer agora, ",user,"?")
   escreval("")
FimProcedimento

Inicio
   escreval("Olá, seja muito bem vindo(a)!")
   escreva("Antes de começar, digite seu nome: ")
   leia(user)

   Welcome
   repita
      escreval("===== MENU =====")
      escreval("1. Cadastrar    ")
      escreval("2. Consultar    ")
      escreval("0. Sair         ")
      escreval("================")
      escreval("")

      escreva("Escolha uma opção: ")
      leia(menu)

      escolha menu
      caso 1
         limpatela
         escreval("===== CADASTRAR PASSAGEIROS =====")
         Cadastro

      caso 2
         limpatela
         escreval("===== CONSULTAR PASSAGEIROS =====")
         Consulta

      caso 0
         limpatela
         escreval("Tutti diz: - câmbio, desligo")
         escreval("")
         
         escreva("Pressione <enter> para sair...")
         leia(scanner)
         limpatela

      outrocaso
         limpatela
         escreval("Oops, essa opção eu desconheço ou não é válida.")
         escreval("Me desculpe ",user,", tente novamente por favor!")

         escreval("")
         escreva("Pressione <enter> para continuar...")
         leia(scanner)
         limpatela

         escreval("Lembre-se de selecionar somente algum dos números apresentados abaixo. São eles:")
         escreval("")
      fimescolha
   ate menu = 0
Fimalgoritmo