create database leilao;

use leilao;



create table categorias(id_categoria int(10) primary key auto_increment, nome_categoria varchar(20), desc_categoria varchar(200), nr_inv int(10));

create table artigos(id_artigo int(10) primary key auto_increment, nome_artigo varchar(30), base_licitacao double, valor_min double, data_lim date, hora_lim time, id_categoria int(10) references categorias (id_categoria), historico int(10), forma_pag varchar(50), id_util int(10) references utilizadores (id_util), localizacao varchar(100));

create table licitacoes(nr_licit int(10) primary key auto_increment, valor double, data_licit date, hora_licit time, id_util int(10) references utilizadores (id_util), id_artigo int(10) references artigos (id_artigo));

create table utilizadores(id_util int(10) primary key auto_increment, nome_util varchar(50), email varchar(70));

create table avaliacoes(id_aval int(10) primary key auto_increment, id_util_avaliador int(10) references utilizadores (id_util), id_util_avaliado int(10) references utilizadores (id_util), classificacao smallint(2));