# MIPS
Eduardo Tirta, Filipe Borba, Gabriel Moreira, Guilherme Graicer
6º Semestre  
Engenharia da Computação Insper  
Design de Computadores

## Sumário

* [Introdução](#introdução)
  * [O MIPS](#o-mips)
  * [Single Cycle vs Pipeline](#single-cycle-vs-pipeline)
* [Arquitetura do Projeto](#arquitetura-do-projeto)
  * [Requisitos](#requisitos)
  * [Fluxo de Dados](#fluxo-de-dados)
  * [Unidade de Controle](#unidade-de-controle)
  * [Top-Level](#Top-Level)
* [Dificuldades do Projeto](#dificuldades-do-projeto)
* [Referências](#referências)

## Introdução
### O MIPS

"O MIPS é uma arquitetura baseada em registrador, ou seja, a CPU usa apenas registradores para realizar as suas operações aritméticas e lógicas. Existem outros tipos de processadores, tais como processadores baseados em pilha e processadores baseados em acumuladores. Processadores baseados no conjunto de instruções do MIPS estão em produção desde 1988. Ao longo do tempo foram feitas várias melhorias do conjunto de instruções. As diferentes revisões que foram introduzidas são MIPS I, MIPS II, MIPS III, MIPS IV e MIPS V. Cada revisão é um super conjunto de seus antecessores. Diversos cursos de arquitetura de computadores em universidades e escolas técnicas frequentemente estudam a arquitetura MIPS. A arquitetura influenciou fortemente projetos posteriores de arquitetura como os processadores da linha Alpha, lançado pela Digital Equipment Corporation (DEC)." [1]

O MIPS possui 32 registradores de 32-bits para propósitos gerais. O registrador $0 fica sempre em zero e escritas nele são descartadas. O registrador $31 sempre armazena o endereço de retorno para o qual a última função chamada deve retornar. Para multiplicação e divisão de inteiros, temos um par de registradores HI e LO. Existem instruções para copiar dados entre os registradores gerais e os HI/LO.  O Program Counter também possui 32 bits e seus 2 bits menos significativos sempre estão em zero, uma vez que as instruções do MIPS I são de 32 bits e devem ficar alinhadas ao acesso à memória.

O MIPS possui 3 formatos básicos de instruções:
* Tipo **R** (registro);
*  Tipo **I** (imediato);
* Tipo **J** (salto).
Além disso, a codificação dessas instruções utiliza uma palavra de 32 bits que foi dividida em campos bem definidos.

![Instruções MIPS](https://i.imgur.com/0uGJ9KR.png)
Figura 1 - Divisão da instrução do MIPS

Esses campos podem ser agrupados dependendo do tipo de instrução. O significado dos nomes dos campos são:
* **Opcode**: Contém o código da instrução a ser executada;
* **Rs**: O número do registrador com o primeiro operando
da instrução definida em op;
* **Rt**: O número do registrador com o segundo operando
da instrução definida em op;
* **Rd**: O número do registrador de destino do resultado da
instrução definida em op;
* **shamt**: Total de deslocamento (shift amount).
* **funct**: Seleciona uma variação específica da operação
definida em opcode.

As execução das instruções é dividida em 5 partes menores ou ciclos:
* Busca da instrução (instruction fetch: IF): Carrega da posição de memória apontada pelo PC, a
instrução a ser executada.
* Decodificação (instruction decode: ID): Lê os dados a serem utilizados; Calcula o endereço da próxima instrução (incrementa o PC).
* Execução (EX): A ALU faz a operação indicada na instrução.
* Acesso à memória (memory access: MA): Escreve ou lê dados na memória. Só funciona nas
instruções lw e sw.
* Escreve o resultado nos registradores (write back: WB): Ocorre na maioria das instruções.


### Single Cycle vs Pipeline

A figura 2 a seguir foi a arquitetura implementada numa primeira iteração do projeto, o MIPS Single Cycle. Numa segunda iteração, foi implementado o MIPS com pipeline como demonstra a figura 3, porém, a instrução de Jump foi implementada utilizando o Single Cycle como referência.

![MIPS Single Cycle](https://i.imgur.com/9HCA2XT.png)  
Figura 2 - MIPS Single Cycle com Fluxo de Dados Completo (Tipo R, LW, SW, BEQ, J).

![MIPS Pipeline](https://i.imgur.com/s9xcZqp.png)  
Figura 3 - MIPS com Pipeline com Fluxo de Dados faltando a instrução J (Tipo R, LW, SW, BEQ).

A principal diferença entre o MIPS Single Cycle e o Pipeline é o tempo de execução das instruções. O primeiro fica limitado ao tempo que a instrução mais demorada leva para ser executada, enquanto que no pipeline, a execução das instruções é sobreposta no tempo. Com isso, o tempo total de execução (latência) de cada instrução não se altera. Mas, depois que o pipeline estiver cheio com instruções, a taxa com que as instruções são iniciadas e terminadas (vazão ou throughput) é muito maior e, idealmente, teríamos um aumento na vazão equivalente ao número de etapas do pipeline.


## Arquitetura do Projeto
### Requisitos

Este projeto será a implementação de um processador RISC de 32 bits. Ele deverá executar um subconjunto das instruções do MIPS DLX. São elas:
* Carrega palavra (load word: lw);
* Armazena palavra (store word: sw);
* Soma (add);
* Subtração (sub);
* E lógico (AND);
* OU lógico (OR);
* Comparação menor que (set if less than: slt);
* Desvio se igual (branch equal: beq);
* Salto incondicional (jump: j).

### Fluxo de Dados

### Unidade de Controle

### Top-Level
O Top-Level é responsável por juntar tanto o fluxo de dados quanto a unidade de controle, porém com o adicional de controlar os botões da placa e os displays de 7 segmentos. Além disso, é nele que são estabelecidos os sinais para a simulação no Waveform. É necessário criar novas entradas no fluxo de dados e passá-las para o Top-Level a fim de verificar as saídas na simulação.


## Dificuldades do Projeto
Debugar
Pipeline

## Referências
[1] - https://pt.wikipedia.org/wiki/Arquitetura_MIPS  
[2] - Slides de Aula no Blackboard  

