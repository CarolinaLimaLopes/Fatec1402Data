# Fatec1402Data

###### Obtenção e Consistência de Datas.

Este trabalho em grupo consiste em obter uma data, consistir a mesma, isto é, verificar sua validade, em seguida obter a data do dia seguinte, como também a data do dia anterior.
Obtenção da data: sabemos que datas possuem 3 componentes: dia, mês e ano. Vamos ter pelo menos 3 variáveis do tipo INTEGER. Para obter a data, faremos uma leitura das 3 variáveis: dia, mês, ano.
Ex.: READLN(DIA, MÊS, ANO);

Consistência da data:
- O mês deve variar de 1 a 12. Qualquer mês fora desse intervalo será inválido.
- Os meses: Janeiro (01), Março (03), Maio (05), Julho (07), Agosto (08), Outubro (10) e Dezembro (12) são meses de 31 dias, invariavelmente.
- Os meses Abril (04), Junho (06), Setembro (09) e Novembro (11) são meses de 30 dias, invariavelmente.
- O mês de Fevereiro (02) possui normalmente 28 dias, mas nos anos bissextos, Fevereiro possui 29 dias
- Os anos bissextos são anos divisíveis por 4 e não por 100, ou divisíveis por 400.

Formato da data:
Conforme o pais, a data pode se apresentar sob diferentes formatos. Temos 5 formatos os quais podem ser implementados neste trabalho:
Formato Britânico: DD/MM/AAAA, o mais usado no Brasil.
Formato Americano: MM/DD/AAAA
Formato Italiano: DD-MM-AAAA
Formato Germânico: DD.MM.AAAA
Formato ANSI: AAAA.MM.DD

Queremos que o formato da data fique o mais automatizado possível, e evitar de ter que perguntar pelo formato sempre que for ler ou escrever a data.

O que muda de um formato para outro: caracter separador e ordem dos termos. Assim, o programa deverá ter as seguintes variáveis globais:


FORMATO: variável tipo INTEGER, cujos valores serão:
1 para Britânico, 2 para Americano, 3 para Italiano, 4 para Germânico, 5 para ANSI.

COMPONENTES: um vetor de inteiros com 3 elementos, onde: componentes[1] é o dia, componentes[2] é o mês e componentes[3] é o ano.

SEPARADOR: variável tipo CHAR. Seus valores serão: ´/´ para Britânico e Americano, ´-´ para Italiano, ´.´ para Germânico e ANSI.

TERMOS: um vetor de inteiros com 3 elementos, onde: termos[1] é o índice do 1º termo, termos[2] é o índice do 2º termo e termos[3] é o índice do 3º termo.

Ex.: o formato é Americano. Assim: separador = ´/´, termos[1] = 2 (mês), termos[2] = 1 (dia) e termos[3] = 3 (ano).

Se o formato é Germânico, temos: separador = ´.´, termos[1] = 1 (dia), termos[2] = 2 (mês) e termos[3] = 3 (ano).

Como usar? Tanto na entrada da data pelo teclado como na escrita da data na tela, a data deverá ser paresentada conforme o formato que estiver definido como padrão. Na hora de ler a data, a instrução deverá ser:

READLN(componentes[termos[1]], separador, componentes[termos[2]], separador, componentes[termos[3]]);

Na hora de escrever a data, a instrução deverá ser:

WRITELN(componentes[termos[1]], separador, componentes[termos[2]], separador, componentes[termos[3]]);

O formato inicial será o Britanico. Assim: formato := 1; separador := ´/´; termos[1] := 1; termos[2] := 2; termos[3] := 3;

Pede-se:
Desenvolver um programa onde é pedido ao usuário que entre com uma data, em seguida faz a consistência dessa data, verificando todos os itens acima descritos. Antes de entrar com a data, perguntar ao usuário se deseja mudar o formato da data. Se a resposta é sim, chamar o procedimento de mudança de formato.
Se na consistência for constatado que essa data não é válida, isto é, uma data como por exemplo 31 de abril, deve ser emitida a mensagem: ´Data inválida´
Porém, se a data é válida, obtenha as seguintes datas e escreva na tela:
- A data do dia seguinte
- A data do dia anterior.

Para melhor estruturar o programa, sugerimos escrever o programa contendo os seguintes procedimentos ou funções:
- Procedure ObterData(var dia, mês, ano: integer);
- Function ConsistirData(dia, mês, ano: integer) : boolean;
- Function Bissexto(ano : integer) : boolean;
- Procedure DiaSeguinte(var dia, mês, ano: integer);
- Procedure DiaAnterior(var dia, mês, ano: integer);
- Procedure MudaFormato(frm : integer);

A função Consistir() retornará true para data ok, ou false para data inválida. Nota: não depende do formato da data.
A função Bissexto() retornará true para ano bissexto, false caso contrário. Também não depende do formato da data.
