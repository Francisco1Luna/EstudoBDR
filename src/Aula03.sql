create database cadastro #criar banco no padrao utf8 (otimizacao)
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

insert into pessoas (nome, nascimento, sexo, peso, altura, nacionalidade) values
('lulur', '2011-03-01', 'f','67.5','1.67', default ),
('jujufofinha', '2006-07-04', 'f', '65.5','1.70', default );

select  * from pessoas;

