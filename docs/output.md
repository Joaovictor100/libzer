### Documentação das funções de saída

#### Função
```print(const char *string)```

#### Lógica
- Receber o ponteiro da string do C para o Assembly
- Guardar o ponteiro da string em x3
- Chamar função len_string
- Ler byte por byte e verificar se é nulo
- Se não for nulo, conta o tamanho da string até chegar no final (null)
- Se foi contatado o tamanho da string, guarda em x0
- Organiza os dados nos registradores para chamar a syscall para saída e impressão da string na tela

#### Registradores de retorno
**x0**:
- Retorna o tamanho da string na função len_string
- Retorna o ponteiro da string na função em C para o Assembly

#### Registradores principais
- **x0**: Número do stdout: 1 (Tela)
- **x1**: Ponteiro da string
- **x2**: Tamanho da string
- **x8**: Número da Syscall: 64 (Saída)

#### Registradores temporários
- **x11**: Ponteiro da string na função len_string
- **x12**: Contador do tamanho da string
- **x13**: Um byte lido da string
- **x3**: Backup do ponteiro da string

#### Registradores especiais
- **x29**: Frame pointer
- **x30**: Endereço de retorno
