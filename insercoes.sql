--------------------------------GG Inserções----------------------------------------------------------------
#id, nome, duraçao, formato, num_eps, status, temp_lanc, data_exib_inicio, data_exib_fim
insert into anime values
('2','Spy x Family', '24', 'TV', '12', 'Em Exibição', 'Spring 2022', '2022-04-09', default),
('4','Steins;Gate', '24', 'TV', '24', 'Finalizado', 'Spring 2011', '2011-04-06', '2011-09-14'),
('39','ODD TAXI', '24', 'TV', '13', 'Finalizado', 'Spring 2021', '2021-04-06', '2021-06-29');

update anime
set duracao = '00:24:00'
where duracao = '24';

insert into anime values
('227','Doukyuusei', '1:00:00', 'Filme', '1', 'Finalizado', 'Winter 2016', '2016-02-20', '2016-02-20');

select * from anime;

#id_genero, id_anime, nome_genero
insert into genero values
(default,'2','Action'),
(default,'2','Comedy'),
(default,'4','Drama'),
(default,'4','Sci-Fi'),
(default,'4','Suspense'),
(default,'227','Boys Love'),
(default,'227','Romance'),
(default,'227','Slice of Life');

#id_studio, nome_studio, fundacao
insert into studio values
(default, 'Wit Studios', '2012-06-1'),
(default, 'CloverWorks', '2018-10-1'),
(default, 'OLM', '1994-06-1'),
(default, 'P.I.C.S.', '2000-04-25'),
(default, 'White Fox', '2007-04-1'),
(default, 'A-1 Pictures', '2005-05-9');

select * from studio;

#id_producao, id_anime, id_studio
insert into studio_produz_anime values
(default, '2', '12'),
(default, '2', '13'),
(default, '4', '16'),
(default, '39', '14'),
(default, '39', '15'),
(default, '227', '17');

select * from studio_produz_anime;

#id_pessoa, nome_pessoa, sexo_pessoa
insert into pessoa values
('691960',' Yuuichi Fukushima', 'M'),
('111967','Shouji Hata','M'),
('001975','Kyouji Asano','M'),
('521974','Gaku Iwasa','M'),
('001965','Tsuneo Kobayashi','M'),
('2121981','Yuzuru Tachikawa','M'),
('000001','Baku Kinoshita','M'),
('000011','Kouhei Yoshida','M');


#id_trabalha, cargo, id_pessoa, id_studio
insert into trabalha_para values
(default,'Producer','691960', '12'),
(default, 'Sound Director','111967', '13'),
(default, 'Chief Animation Director','001975', '13'),
(default, 'Producer','521974', '16'),
(default, 'Storyboard','001965', '16'),
(default, 'Episode Director','2121981', '16'),
(default, 'Director','000001', '14'),
(default, 'Sound Director','000011', '15');

insert into trabalha_para values
(default,'Producer','691960', '17');

select * from trabalha_para;

#id, email, nickname, senha, sexo, data_nasc, bio
insert into usuario values
(default,'gugu@gmail.com','ggUser','123456','M','2000-04-20','Uma descrição legal'),
(default,'nandashine@outlook.com','NShine','654321','F','2002-09-20','Bio em construção');

insert into usuario values
(default,'adrian333@outlook.com','AD33','111122','M','2001-08-21','Assisto animes causalmente');

#select * from usuario;

#id_anime, id_usuario
insert into animes_fav values
('2', '1'),
('4', '1'),
('39', '2'),
('2', '2');

#id_usuario, id_anime, nota, data aval, comentario
insert into avaliacao values
('1','2','10','2022-05-03','Love anya'),
('1','39','9','2022-01-10','Melhor anime da temporada'),
('2','4','10','2013-09-13','Anime muito viajado');

insert into avaliacao values
('3','277','10','2016-05-10','Amo BL');

insert into avaliacao values ('2','2','9','2012-05-05','Estou amando esse anime');

#id_forum, assunto, data_criacao
insert into forum values
(default,'Episodio 1 discussão','2022-05-03'),
(default,'Episodio 2 discussão','2014-02-10'),
(default,'Episodio 5 discussão','2022-01-04');

#id_forum_anime, #id_anime, #id_forum
insert into pertence_a values
(default,'2','1'),
(default,'4','2'),
(default,'39','3');

#id_post, comentario, data_coment, id_usuario, id_forum
insert into usuario_part_forum values
(default,'episodio 1 foi demais','2022-05-04','1','1'),
(default,'episodio 2 foi interessante, ansioso pelos proximos','2014-06-14','1','2'),
(default,'Isso me lembra um outro anime...','2022-10-20','2','3');





