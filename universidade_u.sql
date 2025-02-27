use universidade_u;

create table gasto(
	idgasto int primary key auto_increment,
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
    `set` float(10,2),
    `out` float(10,2),
    nov float(10,2),
    dez float(10,2)
);
select * from gasto;
