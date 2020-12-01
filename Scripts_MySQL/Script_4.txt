-- criando banco de dados
create database db_petshop;

-- selecionando banco de dados
use db_petshop;

-- criando tabela 

create table tb_animais(
	id bigint auto_increment,
    nome varchar(30) not null,
    raca varchar(20),
    idade int,
    vacinado boolean,
    peso decimal(10,2),
    
    primary key(id)

);

-- inserindo dados na tabela
insert into tb_animais(nome, raca, idade, vacinado, peso) values("pitoco","cachorro", 5, true, 15.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Alligator","Jacaré", 10, false, 85.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Anteater ","tamanduá",15, false, 45.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Armadillo ","tatu", 5, false, 25.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Bat ","morcego", 5, false, 0.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Bear ","urso", 5, true, 115.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Butterfly ","borboleta", 5, false, 0.1);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Camel ","camelo", 5, true, 95.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Cat ","gato", 5, true, 8.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Chameleon ","camaleão", 5, false, 1.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Chicken ","frango", 5, true, 2.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Cow ","vaca", 5, true, 100.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Donkey ","macaco", 5, false, 10.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Dolphin ","golfinho", 5, true, 30.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Elephant ","elefante", 5, true, 505.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Fish ","peixe", 5, true, 0.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Fox ","raposa", 5, true, 20.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Frog ","sapo", 5, true, 1.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Giraffe","Girafa ", 5, true, 105.5);
insert into tb_animais(nome, raca, idade, vacinado, peso) values("Goat","bode", 5, true, 35.5);



-- obtendo dados da tabela
select * from tb_animais;

-- animais cujo o nome comece com a letra b
select * from tb_animais where nome like 'b%';

-- animais cujo é maior que 20kg
select * from tb_animais where peso > 20;

-- atualizar daddo
update tb_animais set vacinado = false 
	where id = 10 or id = 11;
    
-- deletar dado
delete from tb_animais where id = 20;

-- obtendo dados da tabela
select * from tb_animais;
    


