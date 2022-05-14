
#--------------------------------GG Inserções----------------------------------------------------------------
#id, nome, duraçao, formato, num_eps, status, temp_lanc, data_exib_inicio, data_exib_fim
insert into anime values
('2','Spy x Family', '00:24:00', 'TV', '12', 'Em Exibição', 'Spring 2022', '2022-04-09', default),
('4','Steins;Gate', '00:24:00', 'TV', '24', 'Finalizado', 'Spring 2011', '2011-04-06', '2011-09-14'),
('39','ODD TAXI', '00:24:00', 'TV', '13', 'Finalizado', 'Spring 2021', '2021-04-06', '2021-06-29');

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
(default, '2', '1'),
(default, '2', '2'),
(default, '4', '5'),
(default, '39', '3'),
(default, '39', '4'),
(default, '227', '6');

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

select * from studio;

#id_trabalha, cargo, id_pessoa, id_studio
insert into trabalha_para values
(default,'Producer','691960', '6'),
(default,'Producer','691960', '1'),
(default,'Producer','691960', '2'),
(default, 'Sound Director','111967', '1'),
(default, 'Sound Director','111967', '2'),
(default, 'Chief Animation Director','001975', '1'),
(default, 'Chief Animation Director','001975', '2'),
(default, 'Chief Animation Director','001975', '10'),
(default, 'Chief Animation Director','001975', '11'),
(default, 'Producer','521974', '5'),
(default, 'Storyboard','001965', '5'),
(default, 'Episode Director','2121981', '5'),
(default, 'Episode Director','2121981', '10'),
(default, 'Director','000001', '3'),
(default, 'Director','000001', '4'),
(default, 'Sound Director','000011', '3'),
(default, 'Sound Director','000011', '4');

select * from trabalha_para;

#id, email, nickname, senha, sexo, data_nasc, bio
insert into usuario values
(default,'gugu@gmail.com','ggUser','123456','M','2000-04-20','Uma descrição legal'),
(default,'adrian333@outlook.com','AD33','111122','M','2001-08-21','Assisto animes causalmente'),
(default,'nandashine@outlook.com','NShine','654321','F','2002-09-20','Bio em construção');

#select * from usuario;

select * from anime;

#id_anime, id_usuario
insert into animes_fav values
('2', '1'),
('4', '1'),
('227', '1'),
('879', '1'),
('35', '2'),
('170', '2'),
('199', '2'),
('67', '2'),
('267', '2'),
('55', '2');

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



#-----------------------------inserções rafael---------------------------------------------
#id, nome, duraçao, formato, num_eps, status, temp_lanc, data_exib_inicio, data_exib_fim
insert into anime values
('170','Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen', '00:25:00', 'TV', '12', 'Finalizado', 'Winter 2019', '2019-01-12', '2019-03-30'), 
('1','Fullmetal Alchemist: Brotherhood', '00:24:00', 'TV', '64', 'Finalizado', 'Spring 2009', '2009-04-05', '2010-06-04'),
('62','Ousama Ranking', '00:22:00', 'TV', '23', 'Finalizado', 'Fall 2021', '2021-10-15', '2022-03-25');


#id_genero, id_anime, nome_genero
insert into genero values
(default,'170','Comedy'),		
(default,'1','Action'),
(default,'1','Adventure'),
(default,'1','Drama'),
(default,'1','Fantasy'),
(default,'62','Adventure'),
(default,'62','Fantasy');

#id_studio, nome_studio, fundacao
insert into studio values
(default, 'Bones', '1998-10-1');

#id_producao, id_anime, id_studio
insert into studio_produz_anime values
(default, '170', '6'),	 
(default, '1', '7'),
(default, '62', '1');

#id_pessoa, nome_pessoa, sexo_pessoa
insert into pessoa values
('000002',' Maiko Okada', 'F'),			
('000003','Makoto Fuchigami','M'),
('861966','Yasunori Ebina','M'),
('000004','Shinichi Omata','M'),
('781972','Jin Aketagawa','M'),
('000005','Yuusuke Adachi','M'),
('000006','Shinji Ishihira','M'),
('300271','Yasuhiro Irie','M'),
('001973','Noritomo Yonai','M');

select * from studio;

#id_trabalha, cargo, id_pessoa, id_studio
insert into trabalha_para values
(default,'Producer','000002', '1'),			
(default, 'Director','000003', '1'),
(default, 'Sound Director','861966', '1'),
(default, 'Director','000004', '6'),
(default, 'Sound Director','781972', '6'),
(default, 'Key Animation','000005', '6'),
(default, 'Storyboard','000006', '7'),
(default, 'Episode Director','300271', '7'),
(default, 'Producer','001973', '7');

#id, email, nickname, senha, sexo, data_nasc, bio
insert into usuario values
(default,'cart89@outlook.com','Carter89','000000','F','2001-08-15','Oi'),							
(default,'motongpx@yahoo.com','Songamonga','778899','M','1997-02-03','ataque dos palhaços lokos'),
(default,'pamflumtt@gmail.com','Pam','104104','F','2002-10-10','Boas vindas ao meu perfil');

select * from usuario;

#id_anime, id_usuario
insert into animes_fav values
('1', '2'),					
('1', '3'),
('2', '3'),
('39', '4'),
('170', '4'),
('170', '5'),
('62', '5'),
('1', '5'),
('4', '5'),
('2', '5');		


#id_usuario, id_anime, nota, data aval, comentario
insert into avaliacao values
('5','1','10','2015-01-15','Um dos melhores'),				
('3','170','10','2020-06-22','Ótimo romance'),
('5','2','10','2022-04-15','Boa história e bons personagens'),
('2','62','9','2021-11-29','Só almoco assistindo isso'),
('4','39','7','2021-08-18','É interessante mas meio lento');

#id_forum, assunto, data_criacao
insert into forum values			
(default,'Episodio 10 discussão', '2022-01-17'),					
(default,'Episodio 4 discussão','2019-02-02'),
(default,'Episodio 12 discussão','2019-03-30');

#id_forum_anime, #id_anime, #id_forum
insert into pertence_a values
(default,'62','4'),				
(default,'170','5'),
(default,'170','6');

#id_post, comentario, data_coment, id_usuario, id_forum
insert into usuario_part_forum values									
(default,'Ta melhorando a cada episódio','2022-01-18','2','4'),									
(default,'Melhor casal, espero que tenha segunda temporada','2019-03-30','3','6'),
(default,'Nao acredito que ela fez isso','2019-02-02','3','5'),
(default,'Como ele ta conseguindo mentir assim','2022-05-04','5','1');

#--------------------------------------inserções Renê-------------------------------------------

#id, nome, duraçao, formato, num_eps, status, temp_lanc, data_exib_inicio, data_exib_fim
insert into anime values
('35',' A viagem de Chihiro','02:04:00','Filme','1','Finalizado','Spring 2003','2003-07-18',default),
('489',' As memorias de marnie','01:42:00','Filme','1','Finalizado','Spring 2015','2015-11-19',default),
('120',' Tumulo dos Vagalumes','01:30:00','Filme','1','Finalizado','Spring 1989','1989-11-24',default),
('267',' Meu amigo totoro','1:26:00','Filme','1','Finalizado','Spring 1995','1995-03-08',default);


#id_genero, id_anime, nome_genero
insert into genero values
(default,'35','Adventure'),
(default,'35','Award Winning'),
(default,'35','Supernatural'),
(default,'267','Adventure'),
(default,'489','Drama'),
(default,'489','Mystery'),
(default,'120','Drama');

#id_studio, nome_studio, fundacao
insert into studio values
(default, 'Studio Ghibli','1985-06-15');


#id_producao, id_anime, id_studio
insert into studio_produz_anime values
(default,'35','9'),
(default,'489','9'),
(default,'120','9'),
(default,'267','9');

#id_pessoa, nome_pessoa, sexo_pessoa
insert into pessoa values
('050165','Miyazaju Hayao','M'),
(291035, 'Takahata Isao','M'),
(100773, 'Yonebayashi','M');

select * from studio;

#id_trabalha, cargo, id_pessoa, id_studio
insert into trabalha_para values
(default, 'Director','050165', '9'),
(default, 'Screenplay','291035', '9'),
(default, 'Key Animation','100773', '9');

#id, email, nickname, senha, sexo, data_nasc, bio
insert into usuario values
(default,'ReneReiDelas@hotmail.com','ReneReiDelas','000amor','M','1997-11-16','amante de anime do studio ghibli'),
(default,'AlanHabboHotel@hotmail.com','AlanHabbo','AlanHaboo','M','1995-06-05','Gosta de todos animes no geral'),
(default,'FernandinhoBeiramar@gmail.com', 'Fernandinho','BeiraMar','M','1990-08-01','Gosto bastante de animes violentos'),
(default,'FrancisquinhoBlogspot@yahoo.com','Francisco','franfran', 'M', '1890-09-28','gosto de animes no geral em vários estilos');
select * from usuario;
#id_anime, id_usuario
insert into animes_fav values
('35','9'),
('489','9'),
('120','9'),
('55','9');

select * from animes_fav;

#id_usuario, id_anime, nota, data aval, comentario
insert into avaliacao values
(3,120,10,'2022-09-05','Anima lindo - is bioroful'),
(5,35,10,'2022-09-24','Nao gostei desse');

#id_post, comentario, data_coment, id_usuario, id_forum
insert into usuario_part_forum values
(default, ' é um anime do caralho mesmo, muito lindo','2022-12-30','3',3),
(default,'Anime ruim da bexiga, velho. Horrível, não gostei','2022-10-20',3,2);


#--------------------------------Clara Inserções----------------------------------------------------------------
#id, nome, duraçao, formato, num_eps, status, temp_lanc, data_exib_inicio, data_exib_fim
insert into anime values
('25','Shingeky no Kyojin: The Final Season Part 2', '00:23:00', 'TV', '12', 'Finalizado', 'Winter 2022', '2022-01-10', '2022-04-04'),
('199','Psycho Pass', '00:23:00', 'TV', '22', 'Finalizado', 'Fall 2012', '2012-10-12', '2013-03-22'),
('55','Mononoke Hime', '02:13:00', 'Filme', '1', 'Finalizado', 'Summer 1997', '1997-07-12', '1997-07-12');


#id_genero, id_anime, nome_genero
insert into genero values
(default,'25', 'Action'),
(default,'25', 'Drama'),
(default,'199', 'Action'),
(default,'199', 'Sci-Fi'),
(default,'199', 'Suspense'),
(default,'55', 'Action'),
(default,'55', 'Adventure'),
(default,'55', 'Fantasy');


#id_studio, nome_studio, fundacao
insert into studio values
(default, 'MAPPA', '2011-06-14'),
(default, 'Production I.G', '1987-12-15');



#id_producao, id_anime, id_studio
insert into studio_produz_anime values
(default, '25', '10'),
(default, '55', '9'),
(default, '199', '11');

#id_pessoa, nome_pessoa, sexo_pessoa
insert into pessoa values
('280175',' Hiroshi Kamiya', 'M'),
('359405','Yuuichirou Hayashi','M'),
('220172', 'Romi Park', 'F'),
('350289','Kana Hanazawa','F'),
('080972','Tomokazu Seki','M'),
('130765','Katsuyuki Motohiro','M');

select * from studio;

#id_trabalha, cargo, id_pessoa, id_studio
insert into trabalha_para values
(default,'Voice Actor','280175', '10'),
(default, 'Director','359405', '10'),
(default, 'Voice Actor','220172', '10'),
(default, 'Voice Actor','350289', '11'),
(default, 'Voice Actor','080972', '11'),
(default, 'Director','130765', '11');

#id, email, nickname, senha, sexo, data_nasc, bio
insert into usuario values
(default,'mimi.silva@uol.com','Mimizinha','678543','F','1999-04-27','Amante de BLs'),
(default,'f.jonas@hotmail.com','OniMaster','182937','M','2000-08-16','Caçador de Onis'),
(default, 'marcos-filho@gmail.com', 'MarcosFilho', '384729', 'M', '2005-02-08', 'Amo animes!!!');

select * from usuario;
#id_anime, id_usuario
insert into animes_fav values
('25', '10'),
('55', '10'),
('1', '10'),
('25', '11'),
('67', '11'),
('2', '11'),
('199', '12'),
('25', '12');

#id_usuario, id_anime, nota, data aval, comentario
insert into avaliacao values
('1','25','10','2022-04-20','Eren meu TUDO! Mata todo mundo mesmooooooo!'),
('1','55','10','2015-03-14','Melhor filme do studio ghibli, uma obra de arte!'),
('2','199','7','2016-07-13','Esperava mais do final, deixou a desejar, mas o anime é bom'),
('2','25','9','2022-05-01','Eren endoidou mesmo kkkkkkk ansioso pela parte 3!');


#id_forum, assunto, data_criacao
insert into forum values
(default,'Episodio 2 discussão','2022-01-18'),
(default,'Episodio 6 discussão','2013-02-10'),
(default,'Mononoke','2014-04-04');

#id_forum_anime, #id_anime, #id_forum
insert into pertence_a values
(default,'25','1'),
(default,'199','2'),
(default,'55','3');

select * from anime;

#id_post, comentario, data_coment, id_usuario, id_forum
insert into usuario_part_forum values
(default,'será que o eren vai invocar os titãs da muralha mesmo?','2022-01-18','2','1'),
(default,'CLARO!! ELE É O MAIOR!','2022-01-19','1','1'),
(default,'Esse episódio foi pesado, porém necessário!','2013-02-10','3','2'),
(default,'Filme bom demais! Crítica a sociedade armamentista total!','2014-04-04','2','3'),
(default,'EEE INVOCOU!','2022-04-01','3','1');

#------------------ inserções Samuel Vidal --------------------
insert into anime values
('67','One Piece', '00:24:00', 'TV', '1016', 'Em Exibição', 'Spring 2022', '1999-10-20', default),
('879','Tokyo Ghoul', '00:24:00', 'TV', '12', 'Finalizado', 'Spring 2022', '2014-07-04', '2014-09-19');

select * from anime;

insert into usuario values
(default,'samuellegal1@gmail.com','samuellegal1','123456','M','1999-02-05','Animes são louquinhos XD'),
(default,'gabrielgomeslegal@gmail.com','GGMANEIRO123','123456','M','1999-02-05','Animes são muito louquinhos XD');


insert into pessoa values
('651121', 'Yuriko Yamaguchi', 'F'),
('630807', 'Hiroaki Hirata', 'M'),
('830719', 'Yurie Kobori', 'F'),
('930828', 'Sora Amamiya', 'F');

insert into avaliacao values
('6','67','10','2022-05-03','Master piece'),
('7','879','1','2022-05-03','Horrível kKkKkKkKkK');

insert into genero values
(default,'67','Action'),
(default,'67','Adventure'),
(default,'67','Fantasy'),
(default,'879','Action'),
(default,'879','Fantasy'),
(default,'879','Horror');

insert into studio values
(default, 'Studio Pierrot', '1979-05-06'),
(default, 'Toei Animation', '1948-01-23');


insert into studio_produz_anime values
(default, '879', '13'),
(default, '67', '14');

select * from studio;

insert into trabalha_para values
(default,'Voice Actor','630807', '14'),
(default,'Voice Actor','651121', '14'),
(default,'Voice Actor','830719', '13'),
(default,'Voice Actor','930828', '13');

insert into usuario_part_forum values
(default,'eita que loucura lol','2022-05-04','6','1'),
(default,'melhor opening','2022-05-04','7','1');

select * from anime;
