create database siteReviewAnime
default character set utf8
default collate utf8_general_ci;

#drop database sitereviewanime;
use sitereviewanime;

create table anime(
id_anime int,
nome varchar(50) unique not null,
duracao time not null,
formato enum('TV','Filme', 'OVA', 'ONA') not null,
num_eps varchar (15) default 'desconhecido',
`status` enum('Em Exibição', 'Finalizado'),
temp_lanc varchar(19) not null,
data_exib_ini date,
data_exib_fim date null,
primary key(id_anime)
);

create table genero(
id_genero int auto_increment,
id_anime int,
nome_genero varchar(20),
primary key(id_genero),
foreign key (id_anime) references anime(id_anime)
);

create table usuario(
id_usuario int primary key auto_increment,
email varchar(50) unique not null,
nickname varchar (15) unique not null,
senha varchar (10),
sexo enum('M','F'),
data_nasc date,
bio text
);

create table studio(
id_studio int primary key,
nome_studio varchar(20),
fundacao date
);


create table pessoa(
id_pessoa int primary key,
nome_p varchar(50),
sexo_p enum('M','F')
);

create table forum(
id_forum int primary key auto_increment,
assunto varchar(100),
data_criacao date
);

create table studio_produz_anime(
id_producao int primary key auto_increment,
id_anime int,
id_studio int,
foreign key (id_anime) references anime(id_anime),
foreign key (id_studio) references studio(id_studio)
);

create table pertence_a(
id_forum_anime int primary key auto_increment,
id_anime int,
id_forum int,
foreign key(id_anime) references anime(id_anime),
foreign key(id_forum) references forum(id_forum)
);


create table usuario_part_forum(
id_post int primary key auto_increment,
comentario text,
data_coment date,
id_usuario int,
id_forum int,
foreign key(id_usuario) references usuario(id_usuario),
foreign key(id_forum) references forum(id_forum)
);

create table avaliacao(
id_usuario int not null,
id_anime int not null,
nota tinyint not null,
data_aval date,
comentario text null,
foreign key(id_usuario) references usuario(id_usuario),
foreign key(id_anime) references anime(id_anime),
primary key(id_usuario, id_anime) 
);

create table trabalha_para(
id_trabalha int primary key auto_increment,
cargo varchar(30),
id_pessoa int,
id_studio int,
foreign key(id_pessoa) references pessoa(id_pessoa),
foreign key(id_studio) references studio(id_studio)
);


create table animes_fav(
id_anime int not null,
id_usuario int not null,
foreign key(id_anime) references anime(id_anime),
foreign key(id_usuario) references usuario(id_usuario),
primary key(id_anime, id_usuario)
);




