drop table tb_condutor;
drop table tb_marca;
drop table tb_modelo;
drop table tb_veiculo;
drop table tb_movimentacao;
drop table tb_configuracao;



/*====================TABELA MARCA==================================*/
create table tb_marca(
	id serial,
	nome varchar (100) not null unique 	
);
insert into tb_marca(nome) values ('honda');
insert into tb_marca(nome) values ('ktm');


/*======================TABELA MODELO================================*/
create table tb_modelo(
	id serial,
	nome varchar(100) not null unique,
	marca_id integer not null
);
insert into tb_modelo(nome, marca_id) values ('xj6', 1);
insert into tb_modelo(nome, marca_id) values ('ninja',2);


/*=================TABELA VEICULO=====================================*/
create table tb_veiculo(
	id serial,
	placa varchar(100) not null unique,
	modelo_id integer not null,
	cor varchar(10) not null,
	tipo varchar(15) not null,
	ano integer not null
);
insert into tb_veiculo(placa, modelo_id, cor, tipo, ano) values ('HHH-SGS',1,'VERMELHO','MOTO',1818);
insert into tb_veiculo(placa, modelo_id, cor, tipo, ano) values ('777-aa',2,'VERMELHO','CARRO',1877);


/*====================TABELA MOVIMENTACAO========================bigint - numeric8*/
create table tb_movimentacao(
	id serial,
	veiculo_id integer not null unique,
	condutor_id integer not null,
	entrada timestamp(6) not null,
	saida timestamp(6), 
	tempo time, 
	tempo_desconto time,
	tempo_multa time,
	valor_desconto numeric(5,2),
	valor_multa numeric(5,2),
	valor_total numeric(5,2) , --5 é a quantidade de numeros totais, 2 é a quantidade de numeros após a virgula
	valor_hora numeric(5,2) ,
	valor_hora_multa numeric(5,2)
);


insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (1,1,now(),now(),'00:00:07', '00:00:06','00:00:05',10,5,15,1);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (2,2,now(),now(),'00:00:07', '00:00:06','00:00:06',20,34,3,5);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (3,3,now(),now(),'00:00:07', '00:00:06','00:00:06',23,34,34,45);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (4,4,now(),now(),'00:00:07', '00:00:06','00:00:06',88,2,44,5);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (5,5,now(),now(),'00:00:07', '00:00:06','00:00:06',23,4,55,7);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (6,6,now(),now(),'00:00:07', '00:00:06','00:00:06',4,54,64,4);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (7,7,now(),now(),'00:00:07', '00:00:06','00:00:06',23,22,2,3);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (8,8,now(),now(),'00:00:07', '00:00:06','00:00:06',21,33,26,6);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (9,9,now(),now(),'00:00:07', '00:00:06','00:00:06',78,24,5,7);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (10,10,now(),now(),'00:00:07', '00:00:06','00:00:06',44,22,45,6);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (11,11,now(),now(),'00:00:07', '00:00:06','00:00:06',43,11,35,42);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (12,12,now(),now(),'00:00:07', '00:00:06','00:00:06',11,55,4,2);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (13,13,now(),now(),'00:00:07', '00:00:06','00:00:06',33,23,3,77);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (14,14,now(),now(),'00:00:07', '00:00:06','00:00:06',88,6,34,3);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (15,15,now(),now(),'00:00:07','00:00:06','00:00:06',45,4,34,4);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (16,16,now(),now(),'00:00:07', '00:00:06','00:00:06',88,54,45,3);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (17,17,now(),now(),'00:00:07', '00:00:06','00:00:06',45,5,4,6);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (18,18,now(),now(),'00:00:07', '00:00:06','00:00:06',46,77,6,3);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (19,19,now(),now(),'00:00:07', '00:00:06','00:00:06',88,9,34,55);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (20,20,now(),now(),'00:00:07', '00:00:06','00:00:06',33,5,34,6);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (21,21,now(),now(),'00:00:07', '00:00:06','00:00:06',45,3,4,0);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (22,22,now(),now(),'00:00:07', '00:00:06','00:00:06',66,5,3,23);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (23,23,now(),now(),'00:00:07', '00:00:06','00:00:06',56,44,2,23);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (24,24,now(),now(),'00:00:07', '00:00:06','00:00:06',88,34,2,7);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (25,25,now(),now(),'00:00:07', '00:00:06','00:00:06',56,22,2,85);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (26,26,now(),now(),'00:00:07', '00:00:06','00:00:06',34,6,5,76);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (27,27,now(),now(),'00:00:07', '00:00:06','00:00:06',22,88,4,6);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (28,28,now(),now(),'00:00:07', '00:00:06','00:00:06',35,45,5,3);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (29,29,now(),now(),'00:00:07', '00:00:06','00:00:06',56,9,7,4);
insert into tb_movimentacao(veiculo_id, condutor_id, entrada, saida, tempo, tempo_desconto, tempo_multa , valor_multa, valor_total, valor_hora, valor_hora_multa) values (30,30,now(),now(),'00:00:07', '00:00:06','00:00:06',46,44,75,5);

select * FROM tb_movimentacao;


/*====================TABELA CONDUTOR========================*/
create table tb_condutor(
	id serial,
	nome varchar(100) not null,
	cpf varchar(50) not null unique, 
	telefone varchar (50) not null,
	tempoPago time not null,
	tempoDesconto time not null

);


insert into tb_condutor (nome, cpf, telefone, tempoPago, tempoDesconto) values ('MATHEUS','2626-2222','2199219','12:12:00','12:12:00');

/*====================TABELA CONFIGURACAO========================*/

create table tb_configuracao(
	id serial,
	valorHora numeric (5,2),
	valorMinutoHora numeric (5,2),
	inicioExpediente time, 
	tempoParaDesconto time, 
	tempoDeDesconto time,
	gerarDesconto boolean,
	vagasMoto integer,
	vagasCarro integer,
	vagasVan integer
);

 insert into tb_configuracao (valorHora, valorMinutoHora, inicioExpediente, tempoParaDesconto, tempoDeDesconto, gerarDesconto,vagasMoto, vagasCarro,vagasVan) values (82.22,22,'12:12:12', '12:12:12', '12:12:12', 'true' ,1,2,3 );

