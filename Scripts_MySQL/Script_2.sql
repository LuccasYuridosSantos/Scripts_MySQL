-- criando o banco de dados 
create database db_commerce;

-- selecionando o banco de dados
use db_commerce;

-- criando tabela  de produtos
create table produtos(

	id bigint auto_increment,
    nome varchar(30) not null,
    preco decimal(10,2),
    quantidade int,
    
    PRIMARY KEY (id)

);

-- inserir dados na tabela
insert into produtos (nome, preco, quantidade) values("TV Samsumg" , 1500.99,40);
insert into produtos (nome, preco, quantidade) values("Som Samsumg", 1000,20);
insert into produtos (nome, preco, quantidade) values("TV LG"      , 1200,10);
insert into produtos (nome, preco, quantidade) values("TV PHILCO " , 2000,30);
insert into produtos (nome, preco, quantidade) values("Notebook DELL I5", 3000,40);
insert into produtos (nome, preco, quantidade) values("Moto E", 799.99,50);
insert into produtos (nome, preco, quantidade) values("Moto X", 1800,40);
insert into produtos (nome, preco, quantidade) values("PC I7", 5000,10);
insert into produtos (nome, preco, quantidade) values("Monitor 1080p", 900,25);
insert into produtos (nome, preco, quantidade) values("Cadeirar Gamer", 500,7);
insert into produtos (nome, preco, quantidade) values("Sofa", 1199.99,15);
insert into produtos (nome, preco, quantidade) values("Poltrona", 299.99,13);
insert into produtos (nome, preco, quantidade) values("Cama Box", 1299.99,16);
insert into produtos (nome, preco, quantidade) values("TV Samsumg 4K", 3500.99,18);
insert into produtos (nome, preco, quantidade) values("A30", 1000.99,20);
insert into produtos (nome, preco, quantidade) values("TV Samsumg 8K", 11300,10);
insert into produtos (nome, preco, quantidade) values("Fogão", 1500,10);
insert into produtos (nome, preco, quantidade) values("Armario", 1200,3);
insert into produtos (nome, preco, quantidade) values("Mesa de jantar", 1300,5);
insert into produtos (nome, preco, quantidade) values("Geladeira", 1500,4);
insert into produtos (nome, preco, quantidade) values("Aspirador de pó", 1000,4);

-- obter todos os dados da tabela
select * from produtos;

-- produtos com o valor maior do que 500
select * from produtos where preco > 500;

-- produtos com o valor menor do que 500
select * from produtos where preco < 500;

-- produtos com o valor entre 700 e 900
select * from produtos where preco >= 700 and preco <= 900;

-- atualizar dado da tabela
update produtos set preco =700.99 where id =21;

-- deletar dados

delete from produtos where id = 1;