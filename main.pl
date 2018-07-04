%================================= QUESTAO 1 =============================================
%Considere a árvore genealógica a seguir:

%a) Usando fatos, defina as relações pai e mãe. Em seguida, consulte o sistema para ver
%se suas definições estão corretas.

pai(eva,ivo).
pai(rai,gil).
pai(clo,gil).
pai(ary,gil).
pai(noe,rai).
pai(gal,ary).
mae(gal,lia).
mae(noe,eva).
mae(rai,bia).
mae(clo,bia).
mae(ary,bia).
mae(eva,ana).

%b) Acrescente ao programa os fatos necessários para definir as relações homem e
%mulher. Por exemplo, para estabelecer que Ana é mulher e Ivo é homem, acrescente
%os fatos mulher(ana) e homem(ivo).
homem(ivo).
homem(rai).
homem(noe).
homem(gil).
homem(ary).
mulher(ana).
mulher(eva).
mulher(bia).
mulher(clo).
mulher(lia).
mulher(gal).

%c) Usando regras, defina a relação gerou(X,Y) tal que X gerou Y se X é pai ou mãe de Y.
gerou(Filho,PaiMae):-pai(Filho,PaiMae);mae(Filho,PaiMae).

%d) Codifique uma regra equivalente a seguinte sentença: Todo mundo que tem filhos é
%feliz;
feliz(PaiMae):-gerou(Filho,PaiMae).

%e) Codifique uma regra equivalente a seguinte sentença: Um casal é formado por duas
%pessoas que têm filhos em comum;
casal(X,Y):-pai(X,Y),mae(Y,Z).

%================================= QUESTAO 2 =============================================
%filme(Título, Gênero, Ano, Duração)
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2001, 108).
filme('A cor púrpura', drama, 1985, 152).
filme('Copacabana', romance, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Vingadores', action, 2018, 148).

%Letra C
Classico(Nome,Genero):-filme(Nome,Gerero,Ano,_), Ano =< 1985.

Drama(X):-filme(X,Y,,),Y=drama.

lancamento(T):-filme(T,,A,),A >=2017.


%================================= QUESTAO 3 =============================================
%pessoa(Nome,Sexo,Altura,Peso).
pessoa('Ana','Feminino',23,1.55,56).
pessoa('Bia','Feminino',19,1.71,62.1).
pessoa('Ivo','Masculino',22,1.80,70.5).
pessoa('Lia','Feminino',17,1.85,57.3).
pessoa('Eva','Feminino',28,1.75,68.7).
pessoa('Ary','Masculino',25,1.72,79).

pesoIdeal(A):-(62.1*A)-44.7.
modelo(X):-pessoa(X,Y,Z,W,K),Y='Feminino',Z>=25,25,W>=1.70,K=<62.1.
altura(H,M):- pessoa(H,X,,A,),pessoa(M,Y,,B,),A>B,X='Masculino',Y='Feminino'.

%================================= QUESTAO 4 =============================================
%1 - Ouro
%2 - Ferro
%3 - Cobre
%4 - Zinco
%
%E depois aparece tudo removendo...
%
