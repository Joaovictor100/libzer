# LibZer

## Objetivos
Esse projeto tem o objetivo de ensinar Assembly, tirando a camada de abstração que outras linguagem de alto-nivel colocam, criando funções do zero e conhecendo principais conceitos do hardware, como:
- Funcionamento da CPU;
- Funcionamento da memoria;
- Estrutura dos dados.

## Funçoes do LibZer
### Entrada e saída de dados
- ```print(const char *string)``` - Saída de dados pela tela
- ```read(char *input, int len)``` - Entrada de dados pelo teclado

### Manipulação de dados
- ```itostr(int number)``` - converte inteiro para string
- ```stoint(char *string)``` - converte string para inteiro
- ```lenstr(char *string)``` - retorna o tamanho da string
- ```format(const char *string, ...)``` - retorna a string formatada

