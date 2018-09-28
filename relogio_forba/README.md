# Relogio_Forba

Projeto de um relógio para FPGA feito em VHDL.

## Sumário

- [Grupo](#grupo)
- [Modo de Usar](#modo-de-usar)
- [Fluxo de Dados e TopLevel](#fluxo-de-dados-e-toplevel)
- [Máquina de Estados](#maquina-de-estados)
- [Dificuldades do Projeto](#dificuldades-do-projeto)

## Grupo

- Eduardo Tirta
- Filipe Borba
- Gabriel Moreira
- Guilherme Graicer

## Modo de Usar
Para utilizar o relógio, basta abrir o arquivo relogio_forba.qaf em seu Intel Quartus Software e compilar o código. Feito isso, é necessário mandar o código para a placa através da interface Programmer do Quartus.

O relógio iniciará em 00:00:00, cabendo ao usuário ajustá-lo para o horário correto. Para tanto, são utilizadas as chaves SW(0) para ajuste de segundo, SW(1) para ajuste de minuto e SW(2) para ajuste de hora. Essas chaves estão indicadas na figura abaixo. Além disso, caso o usuário queira parar o relógio, basta segurar o KEY(1). Caso queira resetar o relógio, basta apertar o KEY(0).

![FPGA](https://i.imgur.com/WgNEGB2.jpg)
Figura 1 - FPGA com indicação dos botões.

## Fluxo de Dados e TopLevel
O código é dividido basicamente em três partes: Fluxo de Dados, Unidade de Controle e um Top-Level.
Nosso fluxo de dados é responsável por realizar as operações de comparação e soma de horário, além de guardar os valores em registradores para serem mostrados no Top-Level. Esse fluxo de dados é controlado pela Unidade de Controle, pois é ela que indica qual comparação deve ser feita e qual horário deve ser somado. Essas operações são realizadas através de uma ULA dentro do fluxo de dados, que recebe entradas de dois Multiplexadores: um deles com o horário atual e o outro com as constantes de comparação.
Por fim, o Top-Level é responsável por juntar tanto o fluxo de dados quanto a unidade de controle, porém com o adicional de controlar os botões da placa e os displays de 7 segmentos.
Nossa unidade de controle será explicada na próxima sessão.

![Fluxo de Dados](https://i.imgur.com/3U9ED5J.jpg)
Figura 2 - Fluxo de Dados do nosso projeto.

## Máquina de Estados
Nossa Unidade de Controle é dada por uma Máquina de Estados.
![Maquina de Estados](https://i.imgur.com/KPPrZpd.jpg)
Figura 3 - Máquina de Estados do nosso projeto.

## Dificuldades do Projeto
