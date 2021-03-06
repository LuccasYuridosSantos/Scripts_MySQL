-- Criando banco de dados
create database db_RH2;
use db_estoque;
-- criando tabelas

create table tb_cargo(
	id bigint auto_increment,
    funcao varchar(50) not null,
    formacao varchar(50),
    perDesconto decimal(10,2),
       
    primary key(id)
);

create table tb_funcionario(
	id bigint auto_increment,
    nome varchar(50) not null,
    nasc date,
    salario decimal(10,2),
    sex char(1),
    id_cargo bigint,
    
    primary key(id),
    foreign key(id_cargo) references tb_cargo(id)
);

-- Inserindo dados nas tabelas
insert into tb_cargo(funcao, formacao, perDesconto) values ("Gerente", "Admistração", 20.5);
insert into tb_cargo(funcao, formacao, perDesconto) values ("Operario", null, 7.5);
insert into tb_cargo(funcao, formacao, perDesconto) values ("Estagiario", "Cursando", 12.5);
insert into tb_cargo(funcao, formacao, perDesconto) values ("Diretor", "Mestrado", 23.5);
insert into tb_cargo(funcao, formacao, perDesconto) values ("Desenvolvedor", "TI", 23.5);

select * from tb_cargo;

insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Marcos", "1980-10-10", 1300.20, "M",2);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Antonio", "1990-12-10", 2000, "M",5);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Marcia", "1995-10-14", 1500.20, "F",2);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Barbara", "2000-01-10", 1600, "F",3);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Ana", "1987-10-10", 1300.20, "F",2);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Carol", "1996-10-10", 3000, "F",5);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Juliana", "1988-05-19", 5000, "F",1);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("José", "1980-04-30", 7000.5, "M",4);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Fabio", "1980-01-01", 1300.20, "M",2);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("João", "1990-12-10", 1300.20, "M",2);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Carlos", "1985-08-16", 8500.50, "M",4);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Bia", "1980-10-10", 1600, "F",3);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Vitoria", "1980-10-10", 1600, "F",3);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Roberto", "1980-10-10", 6700, "M",4);
insert into tb_funcionario(nome, nasc, salario, sex, id_cargo) values ("Roberta", "1989-07-10", 8000, "F",4);

select * from tb_funcionario;

-- Faça um select que retorne os funcionários com o salário maior do que 2000.
select * from tb_funcionario where salario > 2000;

-- Faça um select trazendo  os funcionários com salário entre 1000 e 2000.
select * from tb_funcionario where salario >= 1000 and salario <= 2000;

-- Faça um select  utilizando LIKE buscando os Funcionários com a letra C.
select nome from tb_funcionario where nome like '%c%';

-- Faça um um select com Inner join entre  tabela cargos e funcionarios.
select * from tb_cargo cargo 
	inner join tb_funcionario funcionario
		on cargo.id = funcionario.id_cargo;
        
-- Faça um select onde traga todos os funcionários de um cargo específico
select * from tb_funcionario funcionario
	inner join tb_cargo cargo 
		on funcionario.id_cargo = cargo.id 
        where cargo.funcao = "Desenvolvedor";
