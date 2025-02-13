use universidade_u;

select * from aluno;

update aluno set ativo_sn = 0 where nome = 'João';

insert into aluno( nome, idade, sexo, endereco, telefone, data_incricao_curso, valor_pago_curso, ativo_sn)
values('José', 29, 'M', 'Avenida Dom Manuel, 300 - Fortaleza-CE', '11 3333-7777', '2018-12-02', 600.55, 0); 