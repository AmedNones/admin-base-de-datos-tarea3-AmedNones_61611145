--1. Conocer los superpoderes de cada superheroe
select t1.id,t1.full_name as super_hero_name,
       (select power_name from superpower where id = t2.power_id) as super_power_name
from dbo.superhero t1
left join dbo.hero_power t2
            on t1.id = t2.hero_id;

--2. Mostrar cuantos productores y productoras hay ( hombres y mujeres)
select t1.publisher_name,
       (select gender from gender where id = t2.gender_id) as gender,
       count(t2.gender_id) as gender_count
from dbo.publisher t1
left join dbo.superhero t2
        on t1.id = t2.publisher_id
where t2.gender_id in (1,2)
group by t1.publisher_name,t2.gender_id;


-- 3. Mostrar todos los colores que comoponen a cada superheroe
select t1.full_name,
       t2.colour as eye_colour
from dbo.superhero t1
left join  colour t2
    on t1.eye_colour_id = t2.id
where t2.id != 1;

select t1.full_name,
       t2.colour as hair_colour
from dbo.superhero t1
left join  colour t2
    on t1.hair_colour_id = t2.id
where t2.id != 1;

select t1.full_name,
       t2.colour as skin_colour
from dbo.superhero t1
left join  colour t2
    on t1.skin_colour_id = t2.id
where t2.id != 1;

--4 Listar los atributos de cada superheroe
select t1.full_name,
       (select attribute_name from attribute where id = t2.attribute_id ) as attribute_name
from superhero t1
left join hero_attribute t2
    on t1.id = t2.hero_id;

--5 Mostrar la calificacion de cada superheroe
select t1.full_name,
      t2.alignment
from superhero t1
left join alignment t2
    on t1.alignment_id = t2.id


