
CREATE TABLE GASTO (
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

insert into gasto(ano, tipo, jan, fev, mar, abr, mai, jun, jul, ago, `set`, `out`, nov, dez)
values('2019', 'previsto', 18000, 17000, 19000, 20000, 17000, 18000,18500, 18500, 1800, 17500, 18000, 17000);

insert into gasto(ano, tipo, jan) values('2019', 'realizado', 18353.20);

update gasto set fev = 1755.55 where idgasto = 2;
update gasto set mar = 19435.73 where idgasto = 2;
update gasto set abr = 22753.12 where idgasto = 2;
update gasto set mai = 16198.12  where idgasto = 2;
update gasto set jun = 17451.88 where idgasto = 2;
update gasto set jul = 18975.40 where idgasto = 2;
update gasto set ago = 19163.84 where idgasto = 2;
update gasto set `set` = 18132.56 where idgasto = 2;
update gasto set `out` = 17667.91 where idgasto = 2;
update gasto set nov = 17936.33 where idgasto = 2;
update gasto set dez = 17125.88 where idgasto = 2;

