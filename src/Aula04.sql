create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas (
    id int not null auto_increment,
    nome varchar(30) not null , #tamanho variavel + nao nulo
    nascimento date, # data
    sexo enum('M','F'), #enum permite escolher apenas as opçoes que serao aceitas
    peso decimal(5,2) , #total de numeros + digitos depois da virgula
    altura decimal(3,2), #3 numeros + 2 sendo apos a virgula
    nacionalidade varchar(20) default 'brasil', #caso nao seja informado a nacionalidade, sera brasileira
    primary key(id)
) default charset =utf8mb3;

alter table pessoas
add column profissao varchar(10) after nome;

select * from pessoas;

alter table pessoas
drop column profissao;

alter table pessoas
add column codigo int first ;

alter table pessoas
drop column codigo;

alter table pessoas
modify column profissao varchar(20) default ''; #modify nao altera nome da coluna

alter table pessoas
change column pro prof varchar(20) default '';

alter table pessoas
rename to gafanhotos;

create table if not exists cursos (
    nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    totaulas int,
    ano year default '2016'
) default charset = utf8;

alter table cursos
add column idcurso int not null auto_increment primary key first;


