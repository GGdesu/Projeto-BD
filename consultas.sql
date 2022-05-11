-------GG Consultas-----------------
#1. Consultar as 10 ultimas avaliações de um anime
select comentario, nota
from avaliacao as av join anime as an
on av.id_anime = an.id_anime
where av.id_anime = 2 
limit 10;

#2. Listar Pessoas que trabalham\trabalharam em um determinado Anime. lista das pessoas que trabalharam no anime Spy x Family
select p.nome_p as `nome da pessoa`, p.sexo_p, an.nome as `anime`, t.cargo as cargo
from studio as s
join trabalha_para as t on s.id_studio = t.id_studio
join studio_produz_anime as sta on s.id_studio = sta.id_studio
join anime as an on sta.id_anime = an.id_anime
join pessoa as p on t.id_pessoa = p.id_pessoa
where an.id_anime = 2;

#3. Consultar Animes que uma Pessoa trabalha\trabalhou. Mostra os animes que Yuuichi Fukushima trabalhou\trabalha
select p.nome_p as 'nome da pessoa', p.sexo_p, t.cargo as cargo, an.nome as 'nome do anime'
from pessoa as p
join trabalha_para as t on p.id_pessoa = t.id_pessoa
join studio_produz_anime as sta on t.id_studio = sta.id_studio
join anime as an on sta.id_anime = an.id_anime
where p.id_pessoa = '691960';


#4. Consultar Studios que uma Pessoa trabalhou
select p.nome_p as 'nome da pessoa', p.sexo_p, t.cargo as cargo, s.nome_studio as Studio
from pessoa as p
join trabalha_para as t on p.id_pessoa = t.id_pessoa
join studio_produz_anime as sta on t.id_studio = sta.id_studio
join studio as s on sta.id_studio = s.id_studio
where p.id_pessoa = '691960';




