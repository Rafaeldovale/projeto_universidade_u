use universidade_u;

CREATE TABLE ALUNO_CURSO (
    id_alunocurso int PRIMARY KEY,
    fk_idaluno int,
    fk_idcurso int
);

select * from aluno_curso;
desc aluno_curso;

alter table aluno_curso add constraint fk_aluno_curso
foreign key(fk_idaluno) references aluno(idaluno);

alter table aluno_curso add constraint fk_curso_aluno
foreign key(fk_idcurso) references curso(idcurso);

