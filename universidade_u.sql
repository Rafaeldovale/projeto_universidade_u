use universidade_u;

CREATE TABLE CURSO (
    idcurso int auto_increment PRIMARY KEY,
    descricao varchar(50)
);

select * from curso;

insert into curso(descricao) values('Curso Completo do Desenvolvedor NodeJS e MongoDB');

insert into curso(descricao) values('Desenvolvedor Multiplataforma Android e IOS');

insert into curso(descricao) values('Desenvolvimento Web com Angular');

insert into curso(descricao) values('Desenvolvimento Web Completo');
