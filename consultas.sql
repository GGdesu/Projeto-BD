#-------GG Consultas-----------------
#1. Consultar as 10 ultimas avaliações de um anime
select comentario, nota, an.nome
from avaliacao as av join anime as an
on av.id_anime = an.id_anime
where av.id_anime = 2 
limit 10;


#2. Listar Pessoas que trabalham\trabalharam em um determinado Anime. lista das pessoas que trabalharam no anime Spy x Family
select distinct p.nome_p as `nome da pessoa`, p.sexo_p, an.nome as `anime`, t.cargo as cargo
from studio as s
join trabalha_para as t on s.id_studio = t.id_studio
join studio_produz_anime as sta on s.id_studio = sta.id_studio
join anime as an on sta.id_anime = an.id_anime
join pessoa as p on t.id_pessoa = p.id_pessoa
where an.id_anime = 2;


#3. Consultar Animes que uma Pessoa trabalha\trabalhou. Mostra os animes que Yuuichi Fukushima trabalhou\trabalha
select distinct p.nome_p as 'nome da pessoa', p.sexo_p, t.cargo as cargo, an.nome as 'nome do anime'
from pessoa as p
join trabalha_para as t on p.id_pessoa = t.id_pessoa
join studio_produz_anime as sta on t.id_studio = sta.id_studio
join anime as an on sta.id_anime = an.id_anime
where p.id_pessoa = '691960';


#4. Consultar Studios que uma Pessoa trabalhou
select distinct p.nome_p as 'nome da pessoa', p.sexo_p, t.cargo as cargo, s.nome_studio as Studio
from pessoa as p
join trabalha_para as t on p.id_pessoa = t.id_pessoa
join studio_produz_anime as sta on t.id_studio = sta.id_studio
join studio as s on sta.id_studio = s.id_studio
where p.id_pessoa = '691960';

#-------------------------Rafael-------------------------------------

#5 Listar Animes que uma Pessoa trabalhou em um determinado Studio;
select pessoa.nome_p, nome_studio, anime.nome 
from pessoa 
inner join trabalha_para 
on pessoa.id_pessoa = trabalha_para.id_pessoa 
inner join studio
on studio.id_studio = trabalha_para.id_studio
inner join studio_produz_anime
on studio.id_studio = studio_produz_anime.id_studio
inner join anime
on anime.id_anime = studio_produz_anime.id_anime
where studio.nome_studio = "Wit Studios" && nome_p = " Yuuichi Fukushima";

select * from studio;
#Consultar status de um Anime
select nome, `status` from anime 
where id_anime = 67;

select * from anime where id_anime = 2;

#7 Consultar números de episódios de um Anime;
select nome, num_eps from anime
where id_anime = 67;

#8 Consultar formato de exibição de um Anime;
select nome, formato from anime
where id_anime = 67;

#---------------------- Clara Consultas -----------------------
#25. Listar animes favoritos do usuário com o status “em exibição”;
select usuario.nickname, anime.nome, anime.`status`
from anime join animes_fav 
on anime.id_anime = animes_fav.id_anime
join usuario on usuario.id_usuario = animes_fav.id_usuario
where `status` = 'Em Exibição' and usuario.id_usuario = '2';


#26. listar animes favoritos do usuário com o status “finalizado”;
select usuario.nickname, anime.nome, anime.`status`
from anime join animes_fav 
on anime.id_anime = animes_fav.id_anime
join usuario on usuario.id_usuario = animes_fav.id_usuario
where `status` = 'Finalizado' and usuario.id_usuario = '1';

#27. Listar Fóruns relacionados a um Anime;
select anime.nome, forum.*
from forum
join pertence_a on pertence_a.id_forum = forum.id_forum
join anime on anime.id_anime = pertence_a.id_anime
where anime.id_anime = '25';


#28.Listar os comentários de um Fórum de forma descendente(do mais recente até o mais antigo);
select forum.id_forum, forum.assunto, usuario_part_forum.comentario, usuario_part_forum.data_coment, usuario.nickname
from usuario_part_forum
join forum on usuario_part_forum.id_forum = forum.id_forum
join usuario on usuario.id_usuario = usuario_part_forum.id_usuario
where forum.id_forum = '1'
order by usuario_part_forum.data_coment desc;

#--------------- consultas Samuel Vidal -------------------
#17.Listar animes com uma determinada nota;
select av.id_anime, ani.nome, nota
from avaliacao as av
join anime as ani on ani.id_anime = av.id_anime 
where nota = 10;

#18.Listar o top 10 animes com piores avaliações;
select av.id_anime, ani.nome, avg(nota) as "media de notas"
from avaliacao as av 
join anime as ani on ani.id_anime = av.id_anime 
group by id_anime order by avg(nota) ASC limit 10;

#19.Listar o top 10 Animes mais bem avaliados;
select av.id_anime, ani.nome, avg(nota) as "media de notas"
from avaliacao as av join anime as ani on ani.id_anime = av.id_anime
group by id_anime order by avg(nota) DESC limit 10;

#20.Listar animes com o status “em exibição”;
select nome, `status` from anime as ani where ani.status = "Em Exibição";

#---------------------- renê consultas--------------------------------

#9 Consultar gêneros de um determinado Anime
select anime.nome as 'Nome do anime', genero.nome_genero as 'Genero do anime' 
from anime 
inner join genero on genero.id_anime=anime.id_anime 
where anime.id_anime = 1;

#11 Listar animes que tenham determinado gênero
select anime.nome as 'Nome do anime', genero.nome_genero as 'Genero do anime'
from anime join genero on genero.id_anime = anime.id_anime 
where nome_genero = 'Drama';

#12 Consultar Studio que produziu um Anime
select anime.nome, studio.nome_studio
from anime 
join studio_produz_anime as spa on spa.id_anime = anime.id_anime
join studio on studio.id_studio = spa.id_studio
where anime.id_anime = '39';
