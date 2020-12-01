-- criando banco de dados
create database db_escola;

-- selecionando banco de dados
use db_escola;

-- criando tabela 

create table tb_aluno(
	ra bigint auto_increment,
    nome varchar(30) not null,
    idade int,
    serie varchar(3),
    ativo boolean,
    nota int,
    
    primary key(ra)

);

-- inserindo dados na tabela
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Antonio" , 15, "7A", true, 7);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("MArcos"  , 16, "8A", true, 5);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Julio"   , 14, "6B", true, 9);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Ana"     , 14, "5B", true, 10);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Jose"    , 14, "5B", true, 5);   
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Carlos"  , 14, "5B", true, 4);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Augusto" , 14, "5B", true, 6);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Vitoria" , 14, "5C", true, 9);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Camila"  , 14, "5C", true, 9);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Angela"  , 14, "5C", true, 9);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Adriana" , 14, "5B", true, 8);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Andreia" , 14, "5B", true, 5);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Richard" , 14, "5B", true, 2);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Maicon"  , 13, "5A", true, 10);
insert into tb_aluno (nome, idade, serie, ativo, nota) values("Lucas"    , 14, "5A", true, 8);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("João"    , 14, "5A", true, 8);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Vitor"   , 14, "5B", true, 8);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Beatriz" , 13, "5B", true, 9);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Michelle", 14, "5B", true, 7);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Marcelo" , 14, "6B", false,7);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Mateus"  , 15, "6C", true, 6);
insert into tb_aluno (nome, idade, serie, ativo, nota) values ("Cristina", 15, "6C", true, 5);

-- obtendo dados da tabela
select * from tb_aluno;

-- o/as alunos/a com a nota maior do que 7
select * from tb_aluno where nota > 7;

-- o/as alunos/a com a nota menor do que 7
select * from tb_aluno where nota < 7;

-- atualizar daddo
update tb_aluno set ativo = false 
	where ra = 22 or ra = 6;
    
-- deletar dado
delete from tb_aluno where ra = 13;
    


