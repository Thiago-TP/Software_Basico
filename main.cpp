//# Software-Basico
//Montador para a matéria Software básico (Bruno Luiggi, UnB, abril-maio de 2023)


//## 1a semana - 14/5 a 20/5
//### Pré-processamento completo
//+ Tirar enter entre label e instrução
//+ Não ser sensível à capitalização
//+ Converter pra decimal no CONST
//+ Desconsiderar todos os espaços
//+ 1 espaço entre tokens
//+ Eliminar comentários
//+ ERRO: dois rótulos na mesma linha
//+ ERRO: sem TEXT
//+ ERRO: EXTERN e PUBLIC que NAO tenha BEGIN e END
//+ ERRO: caracteres especiais fora o _  ou número inicial nos rótulos

//### Montador sem tabelas para ligação

//## 2a semana - 21/5 a 27/5
//	### Ligador

//## 3a semana 28/5 a 3/6
//	### Polimento
//	### Documentação (README)

//## 4a semana 4/6 a 5/6
//	### Crunch
//	### Entrega
	


//PRE PROCESSADOR

// REMOVER COMENTARIOS
// REMOVER CASE SENSITIVE
// REMOVER ESPACOS DESNECESSARIOS
// REMOVER TABULACOES DESNECESSARIOS
// REMOVER ENTER DESNECESSARIOS
// COLOCAR ROTULO NA MESMA LINHA DO COMANDO SEGUINTE
// COLOCAR SESSÃO DATA NO FINAL DO CODIGO

// MONTADOR
// VERIFICACAO DE ERRO, ROTULOS MESMA LINHA, ROTULO NAO DEF EM TEXT, DADO NAO DEF EM DATA, FALTA TEXT, CUIDADO BEGIN END, LEXICO 
// TABELA DE DEFINICOES
// AJUSTE DE DIRETIVA SPACE
// AJUSTE DE SAIDA EM DECIMAL, DIRETIVA CONST
// ESPACO MINIMO DE TOKEN
// ARGUMENTO EM SPACE
// AJUSTAR NOME DE SAIDA, EXTENSAO


//LIGADOR 
// INDICATIVO DE LIGAÇÃO
// TABELA DE USO
// AJUSTE DE REF
// AJUSTAR NOME DE SAIDA, EXTENSAO

#include <iostream>
using namespace std;

int main()
{




    return 0;
}


