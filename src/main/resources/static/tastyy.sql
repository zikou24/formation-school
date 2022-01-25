drop database if exists tastyy;
CREATE DATABASE tastyy;
use tastyy;

CREATE TABLE login (
    username varchar(20) not null ,
    password varchar(20)  not null,
		primary Key(username)
);


insert into login
values ("zakaria","1234");

insert into login
values ("restaurateur","meal");

insert into login
values ("khaled","4567");



insert into login
values ("mouhamed","0000");



CREATE TABLE Menus (
    code_menu int ,
    id_restaurateur int,
    items varchar(20) not null,
    tarif int  not null,
	primary Key(code_menu)
);
insert into Menus 
values (1, 1, 'shawarma', 150);
insert into Menus 
values (2, 2, 'pidza', 30);


insert into Menus 
values (3, 3, 'sviti', 50);


insert into Menus 
values (4, 4, 'scalop', 20);

insert into Menus 
values (5, 5, 'tacos', 200);


CREATE TABLE commande (
    id_client int not null ,
    code_menu int not null,
    Id_restaurateur int not null,
    
	primary Key(Id_Client)
);
insert into commande 
values (1, 1, 1);

insert into commande 
values (2, 2, 2);




