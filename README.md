# trabalho-ia-pddl
## Trabalho de Inteligência Artificial
### Alunos
- Marlon Baptista de Quadros
- Eurico Saldanha

### Comando
```
java -jar javagp.jar -d <ARQUIVO_DOMINIO.pddl> -p <ARQUIVO_PROBLEMA.pddl>
```

### Comando exemplo
```
java -jar javagp.jar -d trocalampada.pddl -p todasqueimadas.pddl
```

Arquivo PDDL de domínio do Trabalho de Inteligência Artificial
Trabalho consiste em criar um pddl para um agente que substitui lampadas queimadas
Para substituir as lampadas queimadas da sala o agente precisa pegar a escada e as lampadas no depósito
Para acessar o depósito e as salas ele precisa estar no corredor
Para substituir as lampadas queimadas ele precisa subir na escada e para sair da sala ele precisa descer da escada
Na nossa implementação supomos que o agente precisa pegar uma lâmpada de cada vez no depósito
Utilizamos o javagp.jar para executar os arquivos
Código fonte: https://github.com/pucrs-cc-marlon/trabalho-ia-pddl
