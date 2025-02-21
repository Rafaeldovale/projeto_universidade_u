use universidade_u;

select * from aluno;
select * from curso;

insert into aluno_curso(fk_idaluno, fk_idcurso) values(1, 3 );
insert into aluno_curso(fk_idaluno, fk_idcurso) values(1, 4 );
insert into aluno_curso(fk_idaluno, fk_idcurso) values(2, 2 );
insert into aluno_curso(fk_idaluno, fk_idcurso) values(3, 1 );
insert into aluno_curso(fk_idaluno, fk_idcurso) values(3, 2 );
insert into aluno_curso(fk_idaluno, fk_idcurso) values(3, 3 );
insert into aluno_curso(fk_idaluno, fk_idcurso) values(3, 4 );
insert into aluno_curso(fk_idaluno, fk_idcurso) values(4, 1 );

select * from aluno_curso;


