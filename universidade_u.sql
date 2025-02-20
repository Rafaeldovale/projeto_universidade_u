use universidade_u;

select * from aluno; 
select * from endereco;

alter table aluno rename column logadouro to logradouro;

insert into endereco (
	idendereco, logradouro, numero, complemento, bairro, cidade, estado, fk_idaluno
    )
select 
	idaluno, logradouro, numero, complemento, bairro, cidade, estado, idaluno
from 
	aluno;