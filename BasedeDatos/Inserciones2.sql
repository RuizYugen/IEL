use itsurenglishlearn;
select * from preguntaporquiz;
select * from tema;
select * from preguntaportema where IdTema=1;
select * from preguntaportema;
select * from pregunta;
describe pregunta;
insert into pregunta values(null, ' Complete the sentence: He _____ at the park','runs','run','ran','does run');
insert into pregunta values(null, 'Complete the sentence: _____ He run at the park?', 'Does', 'Do', 'Did', 'Done');
insert into pregunta values(null, 'What is the correct verb in past simple?','Ate', 'eat', 'eaten', 'eating');
select * from preguntaportema;

insert into preguntaPorTema values(12,1);
insert into preguntaPorTema values(13,1);
insert into preguntaPorTema values(14,1);
-- insert into preguntaPorTema values(8,1);


select * from preguntacontestadaporusuaruio;
insert into preguntacontestadaporusuaruio values('Jose1',12,'Correcto');
insert into preguntacontestadaporusuaruio values('Jose1',13,'Correcto');
insert into preguntacontestadaporusuaruio values('Jose1',14,'Incorrecto');
-- insert into preguntacontestadaporusuaruio values('Jose1',8,'Correcto');

select * from preguntacontestadaporusuaruio;
select * from preguntaportema where IdTema=1;
select pcu.user, pcu.idPregunta, pcu.Contesto from preguntacontestadaporusuaruio pcu, preguntaportema pt
where pcu.idPregunta=pt.idPregunta and pt.IdTema=1 and pcu.user like 'Jose1' and pcu.contesto ='Correcto';

select * from tema;
insert into tema values(null, 'Pasado Simple', 'Simple present','El pasado simple, es un verbo el cuál se usa para indicar que se completó una acción que tomó lugar en un tiempo especifico en el pasado',
'The simple past (also called past simple, past indefinite or preterite) is a verb tense which is used to show that a completed action took place at a specific time in the past.',1);

select * from gramatica;

select * from pregunta;
insert into pregunta values(null,'He ____ pizza', 'ate','eat', 'eating', 'eaten');
insert into pregunta values(null, 'We ____ run at the park', 'did not', 'does not', 'are not', 'do not');

insert into preguntaportema values(15,2);
insert into preguntaportema values(16,2);

insert into preguntacontestadaporusuaruio values('Jose1',15,'Correcto');
insert into preguntacontestadaporusuaruio values('Jose1',16,'Incorrecto');

insert into tema values (null, 'Verbos', 'Verbos','.....','.....',1);


insert into pregunta values(null, 'Seleccione la traducción en Inglés del verbo \"escribir\" en tiempo pasado.','write','written','wrote','writing');

select * from pregunta;
insert into preguntaportema values(17,3);
insert into preguntacontestadaporusuaruio values('Jose1',17,'Correcto');

insert into tema values(null,'Vocabulario', 'Vocabulary','...','...',1);
insert into pregunta value(null, 'Selecccione la traducción de la palabra \"gato\".','Cat', 'Kitten', 'Dog', 'Lion');
insert into preguntaportema values(18,4);
insert into preguntacontestadaporusuaruio values('Jose1',18,'Correcto');

