use universidade_u;

select * from aluno;
select * from telefone;

desc aluno;

create table telefone(
	idtelefone int auto_increment primary key,
    numero varchar(20),
    tipo char(3)
    );
    
insert into telefone(numero, tipo) values('11 5555-2222', 'res');
insert into telefone(numero, tipo) values('11 3333-4444', 'com');

alter table aluno drop column telefone;