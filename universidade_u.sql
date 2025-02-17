use universidade_u;

select * from aluno;

desc aluno;

alter table aluno add cpf varchar(14) after email;

alter table aluno add email varchar(150) after idade;

alter table aluno modify column cpf varchar(14);

alter table aluno drop column cpf;