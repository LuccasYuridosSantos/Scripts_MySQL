-- criando banco de dados
create database db_locadora;

-- selecionando banco de dados
use db_petshop;

-- criando tabela 
drop table tb_filmes;
create table tb_filmes(
	id bigint auto_increment,
    nome varchar(255) not null,
    categoria varchar(20),
    idade_min int,
    disponivel boolean,
    quantidade int,
    
    primary key(id)

);

-- inserindo dados na tabela
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("A Origem","drama", 17, true, 5);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("O Enigma de Outro Mundo","drama", 10, false, 5);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("Mortal Kombat Legends","ação",15, false, 0);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("O FAROL ", "suspense", 16, true, 3);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("dois irmãos", "animação", 5, false, 5);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("O CAMINHO DE VOLTA ", "drama", 12, true, 6);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("UMA VIDA OCULTA ", "suspense",16, false, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("DESTACAMENTO BLOOD ", "drama", 16, true, 10);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("AVES DE RAPINA ", "comedia", 14, true, 2);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("1917 ", "drama", 12, false, 3);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("Missão Pijamas ", "comedia", 5, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("O Halloween de Hubie ", "comedia", 5, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("Procura-se um Pai ", "comedia", 14, false, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("A Missy Errada ", "comedia", 15, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("O Plano Imperfeito ", "comedia", 16, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("A Teoria de Tudo ", "romance", 16, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("Como Eu Era Antes de Você ", "romance", 16, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("Bem Vindo aos 40 ", "romance", 14, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("A Sociedade Literária e a Torta de Casca de Batata", "romance ", 16, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("O Amor Não Tira Férias", "romance", 16, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("O Amor Não Tira Férias", "romance", 16, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("O Amor Não Tira Férias", "romance", 16, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("O Amor Não Tira Férias", "romance", 16, true, 4);
insert into tb_filmes(nome, categoria, idade_min, disponivel, quantidade) values("O Amor Não Tira Férias", "romance", 16, true, 4);



-- obtendo dados da tabela
select * from tb_filmes;

-- filmes cujo o nome comece com a letra s
select * from tb_filmes where nome like 'a%';

-- atualizar daddo
update tb_filmes set disponivel = false 
	where id = 10 or id = 11;
    
select nome from tb_filmes where categoria  = "comedia" or categoria = "romance";
    
-- deletar dado
delete from tb_filmes where id = 21;

-- obtendo dados da tabela
select * from tb_filmes;
    


