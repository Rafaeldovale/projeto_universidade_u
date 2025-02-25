use universidade_u;

select * from endereco;
desc endereco;

alter table endereco add constraint uc_endereco_fkidaluno unique(fk_idaluno);

