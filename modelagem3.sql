create database concessionaria;
use concessionaria;

create table vendedor (
	idVendedor int primary key auto_increment,
    nome varchar(40),
    cpf varchar(11),
    telefone varchar(11),
	email varchar(100),
    rua varchar(100),
    numero int,
    bairro varchar(50),
    cep varchar(8)
);

select * from vendedor;

create table carros (
	idCarro int primary key auto_increment,
	marcaDoCarro varchar(40),
    modeloDoCarro varchar(40),
    anoDoCarro int,
    cor varchar(50)
);

select * from carros;

create table vendaDeCarros (
	idVenda int primary key auto_increment,
	numeroDaVenda int,
    dataDaVenda date,
    modeloDoCarro varchar(40),
    marcaDoCarro varchar(40),
    codigoVenda int,
    codigoCarros int,
    codigoCliente int,
	foreign key (codigoVenda) references vendedor(idVendedor),
	foreign key (codigoCliente) references clientes(idCliente),
	foreign key (codigoCarros) references carros(idCarro)
);

select * from vendaDeCarros;

create table clientes ( 
	idCliente int primary key auto_increment,
    cpf varchar(11),
    nome varchar(40),
    email varchar(100),
    rua varchar(100),
    numero int,
    bairro varchar(50),
    cep varchar(8)
);

select * from clientes;

insert into vendedor(nome, cpf, telefone, email, rua, numero, bairro, cep) 
values ("Victor Nunes", "47980514890", "11987880019", "victorvhrnunes@gmail.com", "Agnaldo de Macedo", "860", "Jardim Amaralina", "05570230");

insert into Clientes(nome, cpf, email, rua, numero, bairro, cep) 
values("Joao Da Silva","49516975955","joaosilva55@hotmail.com","maria luiza lima","23","joao XXIII","06195622" );

# DELETE FROM clientes where idCliente = 3 ;
 
insert into carros ( marcaDoCarro, modeloDoCarro, anoDoCarro, cor)
values( "hyundai", "i30", 2015, "preto");

insert into carros ( marcaDoCarro, modeloDoCarro, anoDoCarro, cor)
values( "bmw", "x1", 2022, "branco");

insert into carros ( marcaDoCarro, modeloDoCarro, anoDoCarro, cor)
values( "porsche", "991 gts", 2023, "azul");

insert into carros ( marcaDoCarro, modeloDoCarro, anoDoCarro, cor)
values( "volkswagen", "nivus", 2023, "azul");

insert into carros ( marcaDoCarro, modeloDoCarro, anoDoCarro, cor)
values( "land rover", "discovery", 2020, "preto");

insert into carros ( marcaDoCarro, modeloDoCarro, anoDoCarro, cor)
values( "toyota", "corolla", 2024, "cinza");

insert into carros ( marcaDoCarro, modeloDoCarro, anoDoCarro, cor)
values( "fiat", "toro", 2021, "vermelho");

insert into carros ( marcaDoCarro, modeloDoCarro, anoDoCarro, cor)
values( "volkswagen", "jetta", 2023, "prata");

# alter table carros add idCarro int primary key auto_increment;

# update carros set marcaDoCarro = "chevrolet", modeloDoCarro = "vectra", anoDoCarro = 2012, cor = "prata" where idCarro = 1;
# update carros set marcaDoCarro = "Mercedes-Benz", modeloDoCarro = "GLA-200", anoDoCarro = 2020, cor = "preto" where idCarro = 2;
# update carros set marcaDoCarro = "Mitsubishi", modeloDoCarro = "Lancer", anoDoCarro = 2012, cor = "preto" where idCarro = 3;

drop database concessionaria;