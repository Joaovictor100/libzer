procedimento print(string)
registradores:
    ptr: ponteiro de literal original
    caracter: caractere
    tamanho: inteiro
início
    ptr <-- string
    tamanho <-- 0
    caracter <-- \*string
    Enquanto caracter ≠ '\0':
        string <-- string + 1
        caracter <-- \*string
        tamanho <-- tamanho + 1
    FimEnquanto
    saída padrão <-- tela
    ponteiro da string <-- ptr
    tamanho da string <-- tamanho
    syscall <-- write (64)
    executar
retorno
