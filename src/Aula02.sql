use cadastro;

create database cadastro #criar banco no padrao utf8 (otimizacao)
default character set utf8
default collate utf8_general_ci;

create table pessoas (
    nome varchar(30) not null , #tamanho variavel + nao nulo
    nascimento date, # data
    sexo enum('M','F'), #enum permite escolher apenas as opçoes que serao aceitas
    peso decimal(5,2) , #total de numeros + digitos depois da virgula
    altura decimal(3,2), #3 numeros + 2 sendo apos a virgula
    nacionalidade varchar(20) default 'brasil' #caso nao seja informado a nacionalidade, sera brasileira
) default charset =utf8mb4;

alter table pessoas
add column id int not null auto_increment primary key first;




