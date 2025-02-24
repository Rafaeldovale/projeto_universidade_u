use universidade_u;

select * from endereco;
desc endereco;

CREATE TABLE ENDERECO (
    idendereco int PRIMARY KEY,
    logradouro varchar(100) not null,
    numero varchar(10) not null,
    complemento varchar(20),
    bairro varchar(100) not null,
    cidade varchar(50) not null,
    estado char(2) not null,
    fk_idaluno int not null
);
alter table endereco  modify column logradouro varchar(100) not null;
alter table endereco modify column numero varchar(10) not null;
alter table endereco modify column bairro varchar(100) not null;
alter table endereco modify column cidade varchar(50) not null;
alter table endereco modify column estado char(2) not null;
alter table endereco modify column fk_idaluno int not null;


