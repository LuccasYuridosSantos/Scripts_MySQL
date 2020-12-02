create database db_ecommerce2;
use db_ecommerce2;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(50) not null,
    descricao varchar(255),
    publicoAlvo varchar(50),
    
    primary key(id)

);


create table tb_produtos(
	id bigint auto_increment,
    nome varchar(50) not null,
    preco decimal(10,2) not null,
    quantidade int,
    disponivel boolean,
    id_categoria bigint,
    
    primary key(id),
    foreign key( id_categoria) references tb_categoria(id)

);

insert into tb_categoria(tipo, descricao, publicoAlvo) values ("Smartphones","aparelho celular", "todos");
insert into tb_categoria(tipo, descricao, publicoAlvo) values ("Ferramentas","Utilização para oubras e consertos diversos", "Adultos");
insert into tb_categoria(tipo, descricao, publicoAlvo) values ("Brinquedos","Diversão de crianças", "infaltil");
insert into tb_categoria(tipo, descricao, publicoAlvo) values ("Eletrodomésticos",null, "adultos");
insert into tb_categoria(tipo, descricao, publicoAlvo) values ("Computadores","-", "todos");

select * from tb_categoria;

insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Pc gamer I5", 3500.99, 20, true,5);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Pc gamer I7", 5500.99, 20, true,5);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Pc gamer I9", 8500.99, 20, true,5);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Geladeira", 3500.99, 20, false,4);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Barbie", 1200, 20, true,3);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("PS5", 4999.99, 50, true,4);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Iphnoe 12", 7500.99, 20, true,1);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Makita", 500.99, 20, true,2);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Furadeira", 900.99, 20, true,2);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Carrinho eletrico", 900.99, 20, true,3);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Samsumg S20", 8500.99, 20, true,1);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Samsumg S10", 3500.99, 20, true,1);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("Televisão 4K", 3500.99, 20, true,4);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("NoteBook Accer ", 1900.99, 20, true,5);
insert into tb_produtos(nome, preco, quantidade, disponivel,  id_categoria ) values ("NoteBook Dell I9", 7500.99, 20, true,5);

select * from tb_produtos;


-- Faça um select que retorne os Produtos com o valor maior do que 2000.
select nome from tb_produtos where preco > 2000;

-- Faça um select trazendo  os Produtos com valor entre 1000 e 2000.
select nome from tb_produtos where preco >= 1000 and preco <= 2000;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select nome from tb_produtos where nome like '%c%';

-- Faça um um select com Inner join entre  tabela cargo e funcionário.
select * from tb_produtos pt
	inner join tb_categoria ct
		on pt.id_categoria = ct.id ;
        
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são eletrodomesticos).
select nome, preco from tb_produtos pt
	inner join tb_categoria ct
		on pt.id_categoria = ct.id where ct.tipo = "Eletrodomésticos";



