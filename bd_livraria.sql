create database bd_atividade;
use bd_atividade;

create table tb_autor (
    cd_autor INT auto_increment primary key,
    nm_autor VARCHAR(45)
);

create table tb_livro (
    isbn CHAR(13) primary key,
    nm_livro VARCHAR(50),
    nm_editora VARCHAR(30),
    qt_paginas INT,
    nr_edicao INT,
    aa_edicao INT,
    fk_cd_autor INT,
    foreign key (fk_cd_autor) references tb_autor(cd_autor)
);

create table tb_categoria (
    cd_categoria INT auto_increment primary key ,
    nm_categoria VARCHAR(20),
    ds_categoria LONGTEXT
);

create table tb_item_categoria (
    cd_item INT auto_increment primary key,
    tb_livro_isbn CHAR(13),
    tb_categoria_cd_categoria INT,
    foreign key (tb_livro_isbn) references tb_livro(isbn),
    foreign key (tb_categoria_cd_categoria) references tb_categoria(cd_categoria)
);

create table tb_editora (
    cd_editora INT auto_increment primary key,
    nm_editora VARCHAR(50),
    telefone VARCHAR(15)
);