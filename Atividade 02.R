##################################################
# CENTRO UNIVERSITÁRIO METODISTA IZABELA HENDRIX #
# PROGRAMAÇÃO FUNCIONAL E ORIENTADA A OBJETOS    #
# Projeto Integrador - Atividade 2               #
# Aluno: Nelson de Campos Nolasco                #
##################################################

# 1 - Crie 4 vetores de tamanho 10. Esses vetores devem ser nomeados com apenas uma letra minúscula cada um.

x <- c(1,2,3,4,5,6,7,8,9,10)
y <- c(2,4,6,8,10,12,14,16,18,20)
n <- c(3,6,9,12,15,18,21,24,27,30)
s <- c(5,10,15,20,25,30,35,40,45,50)

# 2 - Execute a soma dos vetores, a subtração dos vetores, multiplicação e divisão. Apresente os resultados.

soma <- x + y + n + s
soma

# Resultado: 11  22  33  44  55  66  77  88  99 110

subtracao <- x - y - n - s
subtracao

# Resultado:  -9 -18 -27 -36 -45 -54 -63 -72 -81 -90

multiplicacao  <- x * y * n * s
multiplicacao

# Resultado:  30    480   2430   7680  18750  38880  72030 122880 196830 300000

divisao  <- x / y / n / s
divisao 

# Resultado:  0.0333333333 0.0083333333 0.0037037037 0.0020833333 0.0013333333 
#             0.0009259259 0.0006802721 0.0005208333 0.0004115226 0.0003333333


# 3 - Execute a soma da raiz quadrada dos dois primeiros vetores com a divisão 
#     da quarta potência dos dois últimos vetores.

calculo <- (sqrt(x) + sqrt(y)) + (n^4 / s^4)
calculo

# Resultado: 2.543814 3.543814 4.311141 4.958027 5.527946 6.043191 6.517009 6.958027 7.372241 7.764014

# 4 - Crie 2 matrizes de tamanho 10 X 10 com números que assumem casas decimais.

A <- matrix(seq(from = 0.5, to = 5, by = 0.5), 10, 10)
B <- matrix(seq(from = 5, to = 0.5, by = -0.5), 10, 10, byrow = T)

# 5 - Multiplique as matrizes por 10. Divida as matrizes por 3. Multiplique as duas matrizes.

# Matrizes * 10
A_10 <- A*10
B_10 <- B*10


# Matrizes / 3
A_3 <- A/3
B_3 <- B/3

A_3

B_3

# Matrizes multiplicadas entre si
AB <- A %*% B
AB


# 6 - Monte um banco de dados com os nomes de todos os seus colegas da aula de 
# Programação Funcional e Orientada a Objetos. Coloque no banco de dados a idade de cada um, 
# o curso que faz, o time de futebol e o número de horas gastas fazendo exercícios 
# no R (para essa variável, use números com 2 casas decimais). Exiba o banco no console. 
# Atenção: os dados do tipo character devem ser character mesmo; não devem ser transformados 
# automaticamente em factor.

nomes <- c("Ester", "Gerson", "Edésio", "Adelvan", "Fabiano", "Warley", "Larissa")
idades <- c(20L, 24L, 29L, 18L, 25L, 20L, 24L)
cursos <- c("CD", "CD", "CD", "CD", "BioI", "BioI", "BioI")
times <- c("Cruzeiro", "Sport", "Atlético", "Flamengo", "Cruzeiro", "Atlético", "Atlético")
horasexerc <- c(4.00, 2.30, 1.50, 2.00, 2.20, 2.30, 2.00)


colegas <- data.frame(nomes, idades, cursos, times, horasexerc, stringsAsFactors = F)

colegas


# 7 - Com um comando, exiba o banco de dados numa nova tela.

View(colegas)           

# 8 - Confira várias informações sobre o banco de dados (tamanho, classes das variáveis, nomes das variáveis) 
#     usando apenas um comando.

str(colegas)

# 9 - Algumas variáveis fazem sentido serem do tipo factor (variáveis categóricas).
#     O curso e o time de futebol são duas delas. 
#     Usando um comando transforme essas variáveis em factor.

colegas$cursos <- as.factor(colegas$cursos)
colegas$times <- as.factor(colegas$times)

# 10 - Acrescente, no final do banco de dados, mais uma linha com as 
# informações de todas as variáveis para o professor.

colegas <- rbind(colegas, data.frame(nomes = "Neylson", idades = 30L, cursos = "CD/BioI", times = "Atlético", horasexerc = 1.30))

# 11 - Crie uma lista com todos os objetos que você criou neste exercícios. Exiba a lista. 
# Apresente a classe da lista.

lista <- list(x, y, n, s, soma, subtracao, multiplicacao, divisao,
              calculo, A, B, A_10, A_3, B_10, B_3, AB, colegas)

lista

class(lista)

sapply (lista, class)