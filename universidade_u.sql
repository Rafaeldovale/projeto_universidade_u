use universidade_u;

/*
CREATE TABLE ALUNO (
    nome varchar(25),
    idade int,
    sexo char(1),
    endereco text,
    telefone varchar(20),
    data_incricao_curso date,
    valor_pago_curso float(10,2),
    ativo_sn int,
    cpf varchar(14),
    email varchar(150),
    idaluno int auto_increment PRIMARY KEY,
    data_nascimento date,
    UNIQUE (cpf, email)
);

CREATE TABLE TELEFONE (
    idtelefone int auto_increment PRIMARY KEY,
    numero vrchar(20) not null,
    tipo enum('res','com','cel') not null,
    fk_idaluno int not null
);

CREATE TABLE ENDERECO (
    idendereco int PRIMARY KEY,
    logradouro varchar(100) not null,
    numero varchar(10) not null,
    complemento varchar(20),
    bairro varchar(100) not null,
    cidade varchar(50) not null,
    estado char(2) not null,
    fk_idaluno int not null UNIQUE
);

CREATE TABLE CURSO (
    idcurso int auto_increment PRIMARY KEY,
    descricao varchar(50)
);

CREATE TABLE ALUNO_CURSO (
    id_alunocurso int PRIMARY KEY,
    fk_idaluno int,
    fk_idcurso int
);

CREATE TABLE GASTO (
    idgasto int,
    ano int not null,
    tipo enum('previsto','realizado') not null,
    jan float(10,2),
    fev float(10,2),
    mar float(10,2),
    abr float(10,2),
    mai float(10,2),
    jun float(10,2),
    jul float(10,2),
    ago float(10,2),
    set float(10,2),
    out float(10,2),
    nov float(10,2),
    dez float(10,2)
);
 
ALTER TABLE ALUNO ADD CONSTRAINT FK_ALUNO_2
    FOREIGN KEY (ativo_sn)
    REFERENCES ALUNO_CURSO (id_alunocurso);
 
ALTER TABLE TELEFONE ADD CONSTRAINT fk_aluno_telefone
    FOREIGN KEY (fk_idaluno)
    REFERENCES ALUNO (idaluno);
 
ALTER TABLE ENDERECO ADD CONSTRAINT fk_aluno_endereco
    FOREIGN KEY (fk_idaluno)
    REFERENCES ALUNO (idaluno);
 
ALTER TABLE ALUNO_CURSO ADD CONSTRAINT fk_aluno_curso
    FOREIGN KEY (fk_idaluno)
    REFERENCES ALUNO (idaluno);
 
ALTER TABLE ALUNO_CURSO ADD CONSTRAINT fk_curso_aluno
    FOREIGN KEY (fk_idcurso)
    REFERENCES CURSO (idcurso);

select * from aluno;

alter table aluno add data_nascimento date;

update aluno set data_nascimento = '1960-05-01' where idaluno = 1;
update aluno set data_nascimento = '1980-06-12' where idaluno = 2;
update aluno set data_nascimento = '1982-01-07' where idaluno = 3;
update aluno set data_nascimento = '1970-03-04' where idaluno = 4;
update aluno set data_nascimento = '1985-12-05' where idaluno = 5;
update aluno set data_nascimento = '1988-01-20' where idaluno = 6;


-- timestamp(marca temporal) início à partir da meia-noite do dia 01/01/1970

select 
	data_nascimento,
    curdate() as data_atual,
    timestampdiff(year, data_nascimento, curdate()) as idades
from 
	aluno;
    
alter table aluno drop idade;


select 
	idaluno,
    nome,
    data_nascimento,
    extract(month from data_nascimento) as data_nasc_mes,
    extract(day from data_nascimento) as data_nasc_dia,
    
    curdate() as data_atual,
    extract(month from curdate()) as data_atual_mes,
    extract(day from curdate()) as data_atual_dia,
    timestampdiff(year, data_nascimento, curdate()) as idade
from 
	aluno
where 
	extract(month from data_nascimento) = extract(month from curdate())
    and extract(day from data_nascimento) = extract(day from curdate());
    
    
/*removendo os campos valor_pago_curso e data_inscricao_curso da
tabela aluno para a tabela aluno_curso*/
/*
select data_incricao_curso, valor_pago_curso from aluno;
select * from aluno_curso;

alter table aluno_curso add data_inscricao_curso date;
alter table aluno_curso add valor_pago_curso float(10,2);

/*query de update com uma subquery para recuperar os dados*/
/*
select * from aluno;
select idaluno, data_incricao_curso, valor_pago_curso from aluno where idaluno = 1;

update 
	aluno_curso
set
	data_inscricao_curso = (select data_incricao_curso from aluno where idaluno = 1),
    valor_pago_curso = (select valor_pago_curso from aluno where idaluno = 1)
where
	fk_idaluno = 1;

update 
	aluno_curso
set
	data_inscricao_curso = (select data_incricao_curso from aluno where idaluno = 2),
    valor_pago_curso = (select valor_pago_curso from aluno where idaluno = 2)
where
	fk_idaluno = 2;

update 
	aluno_curso
set
	data_inscricao_curso = (select data_incricao_curso from aluno where idaluno = 3),
    valor_pago_curso = (select valor_pago_curso from aluno where idaluno = 3)
where
	fk_idaluno = 3;

update 
	aluno_curso
set
	data_inscricao_curso = (select data_incricao_curso from aluno where idaluno = 4),
    valor_pago_curso = (select valor_pago_curso from aluno where idaluno = 4)
where
	fk_idaluno = 4;
    
    
alter table aluno drop column data_incricao_curso;
alter table aluno drop column valor_pago_curso;
*/
 /*   
-- add default no campoo ativo_sn
select * from aluno;

alter table aluno modify column ativo_sn int default 1;

insert into aluno(sexo, email, nome, cpf, data_nascimento) 
values ('M', 'jorge@teste.com.br', 'Jorge', '444.111.111-15', '1989-01-06');

insert into aluno(sexo, email,ativo_sn, nome, cpf, data_nascimento) 
values ('M', 'jamilton@teste.com.br', 0, 'Jamilton', '444.111.111-55', '1987-07-07');

-- modificando data_inscricao_curso com datetime default 

select * from aluno_curso;

alter table aluno_curso modify column data_inscricao_curso datetime default current_timestamp;

insert into aluno_curso(fk_idaluno, fk_idcurso, data_inscricao_curso, valor_pago_curso)
values(7, 3, curdate(), 720);
*/
/*
select * from aluno_curso;

alter table aluno_curso drop column id_alunocurso;

alter table aluno_curso add constraint 
pk_aluno_curso primary key(fk_idaluno, fk_idcurso, data_inscricao_curso);

desc aluno_curso;
*/
/*
CREATE TABLE PROJETO_FUNCIONARIO (
    codigo_projeto int,
    matricula_funcionario int,
    nome_projeto varchar(100) not null,
    nome_funcionario varchar(50) not null,
    funcao_funcionario varchar(50) not null,
    telefone_funcionario varchar(20),
    data_criacao_projeto datetime default current_timestamp,
    horas_estimadas int not null,
    horas_realizadas int
);

alter table projeto_funcionario add constraint pk_projeto_funcionario
primary key(codigo_projeto, matricula_funcionario);

desc projeto_funcionario;

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto, nome_funcionario, funcao_funcionario, horas_estimadas
)values (
	1, 100, 'Matricula Online', 'Bianca', 'Analista de Atendimento', 200
);

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto, nome_funcionario, funcao_funcionario, horas_estimadas
)values (
	1, 110, 'Matricula Online', 'Fatima', 'Gerente de Atendimento', 100
);

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto, nome_funcionario, funcao_funcionario, horas_estimadas
)values (
	1, 127, 'Matricula Online', 'Miguel', 'Analista programador senior', 500
);

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto, nome_funcionario, funcao_funcionario, horas_estimadas
)values (
	2, 221, 'Economia de Papel', 'Laura', 'Analista de Qualidade', 200
);

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto, nome_funcionario, funcao_funcionario, horas_estimadas
)values (
	3, 221, 'Notas Online', 'Bianca', 'Analista Administrativo', 150
);
*/
/*
select * from projeto_funcionario;

-- anomalias de inserção (redundâncias de dados, dados inconsitentes

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto, nome_funcionario, funcao_funcionario, horas_estimadas
)values (
	2, 353, 'Economia de Papel', 'João', 'Analista Financeiro', 25
);

-- Anomalias de exclusão (perder registros importantes)

delete from projeto_funcionario where codigo_projeto = 3 and matricula_funcionario = 221;

-- Anomalias na atualizacao (informacões inconsistentes)

update projeto_funcionario set nome_projeto = 'Inscrição Online' 
where codigo_projeto = 1 and matricula_funcionario = 110;
-- 
*/

/*Modificando o projeto para 2 forma normal */ 

create table projeto(
	idcodigo int auto_increment,
    data_criacao datetime default current_timestamp,
    nome varchar(100) not null,
    constraint pk_projeto primary key(idcodigo)
);

desc projeto;

create table funcionario(
	idmatricula int auto_increment,
    nome varchar(50) not null,
    funcao varchar(50) not null,
    telefone varchar(20),
    constraint pk_funcionario primary key(idmatricula)
);

desc funcionario;