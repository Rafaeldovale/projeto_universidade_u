use universidade_u;

select * from aluno;

alter table aluno add constraint uc_aluno_cpf unique(cpf);


insert into aluno (nome, idade, email, cpf, sexo, data_incricao_curso, valor_pago_curso, ativo_sn)
values('Rosa', 25, 'rosa@teste.com.br', '444.111.111-12', 'F', '2019-01-05', 625, 1);

alter table aluno add constraint uc_aluno_email unique(email);

desc aluno;

