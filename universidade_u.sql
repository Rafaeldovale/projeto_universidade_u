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
*/

-- timestamp(marca temporal) início à partir da meia-noite do dia 01/01/1970
/*
select 
	data_nascimento,
    curdate() as data_atual,
    timestampdiff(year, data_nascimento, curdate()) as idades
from 
	aluno;
    
alter table aluno drop idade;
*/

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
    

    