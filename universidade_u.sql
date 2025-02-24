use universidade_u;

select * from telefone;

alter table telefone drop column tipo;
alter table telefone add tipo enum('com', 'res', 'cel');

update telefone set tipo = 'res' where idtelefone = 1;
update telefone set tipo = 'cel' where idtelefone = 2;
update telefone set tipo = 'com' where idtelefone = 3;
update telefone set tipo = 'cel' where idtelefone = 4;
update telefone set tipo = 'com' where idtelefone = 5;
update telefone set tipo = 'cel' where idtelefone = 6;





