-- Criando o banco de dados db_rh
create database db_rh;

-- Selecionando o banco de dados
use db_rh;

-- criando a tabela tb_funcionarios e declarando seus campos e tipos
create table tb_funcionarios(	
    id bigint auto_increment,
    nome varchar(30) not null,
    cpf varchar(11) not null,
    salario decimal(10,2),
    telefone varchar(12),
    endereco varchar(30),
    ativo boolean,
       
    primary key(id) 
);

-- inserindo dados na tabela
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Antonio", "99999999999", 2500,"19988888888", "Rua 20 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("MArcos",  "99999999988", 1500,"19988888887", "Rua 21 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Julio",   "99999999977", 2000,"19988888886", "Rua 22 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Ana",     "99999999987", 3000,"19988888885", "Rua 23 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Jose",    "99999999940", 2000,"19988888880", "Rua 25 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Carlos",  "99999999995", 2000,"19988888881", "Rua 29 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Augusto", "99999999992", 2000,"19988888882", "Rua 30 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Vitoria", "99999999991", 2000,"19988888888", "Rua 01 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Camila",  "99999999990", 2000,"19988888884", "Rua 50 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Angela",  "99999999911", 2000,"19988888876", "Rua 90 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Adriana", "99999999912", 2000,"19988888878", "Rua 88 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Andreia", "99999999913", 2000,"19988888828", "Rua 33 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Richard", "99999999914", 1200,"19988888818", "Rua 32 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Maicon",  "99999999921", 1200,"19988888838", "Rua 34 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Lucas",   "99999999933", 1200,"19988888898", "Rua 35 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("João",    "99999999944", 1200,"19988888844", "Rua 36 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Vitor",   "99999999966", 1200,"19988888840", "Rua 46 campinas", false);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Beatriz", "99999999955", 1200,"19988888841", "Rua 47 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Michelle","99999999968", 1800,"19988888488", "Rua 48 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Marcelo", "99999999989", 1800,"19988888388", "Rua 49 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Mateus",  "99999999936", 1800,"19988888188", "Rua 55 campinas", true);
insert into tb_funcionarios (nome, cpf, salario, telefone, endereco, ativo) values ("Cristina","99999999945", 1800,"19988888000", "Rua 66 campinas", false);


-- Obter os dados da tebela
select * from tb_funcionarios;

-- retornar os funcionários com o salário maior do que 2000
select * from tb_funcionarios  where salario > 2000;

-- retornar os funcionários com o salário menor do que 2000
select * from tb_funcionarios  where salario < 2000;

-- atualizar dados da tabela
update tb_funcionarios set nome = "Maria"
	where id = 25;

-- deletar dados da tabela
delete from tb_funcionarios where id =2  or id =4;
