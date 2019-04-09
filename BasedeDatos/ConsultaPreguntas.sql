use ItsurEnglishLearn;

describe usuario;
insert into usuario values(
'Paco123', 'root','Francisco', 'Paniagua', 'Zamora', 'paco@gmail.com', 'kjfkdjfkjdkf', 'Administrativo');
insert into usuario values (
 'Eli123', 'root','Elizabeth', 'González', 'Duran', 'eli@gmail.com', 'kjfkdjfkjdkf', 'Administrativo'
);
insert into usuario values('Ruiz123', 'root','Jesús', 'Ruíz', 'Sánchez', 'ruiz@gmail.com', 'kjfkdjfkjdkf', 'administrativo');

insert into usuario values('Jose1', 'jose123', 'José Jesús', 'García', 'Rojas','jj@gmail.com','ldjfldjf','Alumno'); 

describe sujeto;

insert into sujeto values(1,'Yo',       'I',   'Me', 'My', 'Myself');
insert into sujeto values(null,'Tú/Usted', 'You', 'You', 'Your', 'Yourself');
insert into sujeto values(null,'Él',        'He', 'Him', 'His', 'Himself');
insert into sujeto values(null,'Ella',      'She', 'Her', 'Her', 'Herself');
insert into sujeto values(null,'Eso',        'It', 'It', 'Its', 'Itself');
insert into sujeto values(null,'Nosotros/as', 'We', 'Us', 'Our', 'Ourselves');
insert into sujeto values(null,'Ustedes',     'You', 'You', 'Your', 'Yourselves');
insert into sujeto values(null,'Ellos/as',    'They', 'Them', 'Their', 'Themselves');

select * from sujeto;
describe verbo;
select * from verbo;

insert into verbo values(null, 'Ser/Estar','Be', 'Was/Were','Been');
insert into verbo values(null, 'Ganar (ganarle a alguien)', 'Beat','Beat','Beaten');
insert into verbo values(null, 'Empezar', 'Begin','Began','Begun');
insert into verbo values(null, 'Doblar', 'Bend','Bent','Bent');
insert into verbo values(null, 'Morder', 'Bite','Bit','Bitten');
insert into verbo values(null, 'Soplar', 'Blow','Blew','Blown');
insert into verbo values(null, 'Romper', 'Break','Broke','Broken');
insert into verbo values(null, 'Llevar/Traer', 'Bring','Brought','Brought');

insert into verbo values(null, 'Construir', 'Build','Built','Built');
insert into verbo values(null, 'Comprar', 'Buy','Bought','Bought');
insert into verbo values(null, 'Coger', 'Catch','Caught','Caught');
insert into verbo values(null, 'Elegir', 'Choose','Chose','Chosen');
insert into verbo values(null, 'Venir', 'Come','Came','Come');
insert into verbo values(null, 'Costar', 'Cost','Cost','Cost');
insert into verbo values(null, 'Hacer', 'Do','Did','Done');
insert into verbo values(null, 'Dibujar', 'Draw','Drew','Drew');
insert into verbo values(null, 'Soñar', 'Dream','Dreamed / Dreamt','Dreamed / Dreamt');


insert into verbo values(null, 'Conducir', 'Drive','Drove','Driven');
insert into verbo values(null, 'Beber', 'Drink','Drank','Drunk');
insert into verbo values(null, 'Comer', 'Eat','Ate','Eaten');
insert into verbo values(null, 'Caer', 'Fall','Fell','Fallen');
insert into verbo values(null, 'Sentir', 'Feel','Felt','Felt');
insert into verbo values(null, 'Luchar', 'Fight','Fought','Fought');
insert into verbo values(null, 'Encontrar', 'Find','Found','Found');
insert into verbo values(null, 'Volar', 'Fly','Flew','Flown');

insert into verbo values(null, 'Olvidar', 'Forget','Forgot','Forgotten');
insert into verbo values(null, 'Perdonar', 'Forgive','Forgave','Forgiven');
insert into verbo values(null, 'Conseguir', 'Get','Got','Gotten');
insert into verbo values(null, 'Dar', 'Give','Gave','Given');
insert into verbo values(null, 'Ir', 'Go','Went','Gone');
insert into verbo values(null, 'Crecer', 'Grow','Grew','Grown');
insert into verbo values(null, 'Tener', 'Have','Had','Had');
insert into verbo values(null, 'Oir', 'Hear','Heard','Heard');
insert into verbo values(null, 'Esconder', 'Hide','Hid','Hidden');
insert into verbo values(null, 'Golpear', 'Hit','Hit','Hit');



select * from verbo;


describe pregunta;
select * from pregunta;
insert into pregunta values
(null, '_____ is she?', 'Who', 'What', 'Which','Whose' );
insert into pregunta values
(null, '_____ you eat pizza?', 'Do', 'Does', 'are','___' );
insert into pregunta values
(null, 'Where is David? _____ is at home.', 'He', 'His', 'she','him' );
insert into pregunta values
(null, 'Can you help _____?', 'me', 'I', 'We','They' );
insert into pregunta values
(null, 'Where is the book? ____ is on the table.', 'It', 'He', 'She','___' );
insert into pregunta values
(null, '____ house is blue.', 'Your', 'You', 'It','Yours' );
insert into pregunta values
(null, 'Today is Wednesday. Yesterday it _____ Tuesday.', 'were', 'is', 'be','was' );
insert into pregunta values
(null, 'Where ____ Sarah live?', 'does', 'is', 'do','are' );
insert into pregunta values
(null, 'How many people ______ in your family?', 'are there', 'there are', 'is there','there' );
insert into pregunta values
(null, 'Its Thursday today. Tomorrow it ___________ Friday.', 'will be', 'was', 'be','will' );
insert into pregunta values
(null, '"Has Steve got a sister?" "No, he ___________, but he has got 2 brothers."', 'hasn´t', 'has', 'haven´t','not');







describe quiz;

insert into quiz values(null, 'Quiz Diagnostico 1');
describe  preguntaporquiz;
insert into preguntaporquiz values(null, 1, 1);
insert into preguntaporquiz values(null, 3,1);
insert into preguntaporquiz values(null, 4, 1);

describe preguntacontestadaporusuaruio;

insert into preguntacontestadaporusuaruio values ('Jose1',1,'Correcto' );
insert into preguntacontestadaporusuaruio values ('Jose1',2,'Correcto' );

describe estadistica;
insert into estadistica values (null, 'Jose1', '2019-02-02',1);
describe gramatica;
insert into gramatica values (null, 'Sujeto', 'Simple present', 'Complement', 'Afirmativo');
insert into gramatica values (null, 'Auxiliar-Sujeto', 'Simple present', 'Complemet', 'Pregunta');
insert into gramatica values (null, 'Sujeto-Auxiliar-Negativo', 'Simple present', 'Complement', 'Negativo');
describe tema;
insert into tema values (null, 'Presente simple', 'Simple present',
'Para conjugar el presente simple usamos el infinitivo para los sujetos \“I\”, \“you\”, \“we\” y \“they\” y para las terceras personas \“he\”, \“she\” y \“it\”, añadimos una \“-s\” al final del verbo.',
'To conjugate the present simple we use the infinitive for the subjects \“I\”, \“you\”, \“we\” y \“they\” and for the third persons \“he\”, \“she\” y \“it\”, we add a \“-s\” to the end of the verb.',
1);
select * from tema;
select * from gramatica;
select *from pregunta;
insert into gramaticaportema values(1,1);
insert into gramaticaportema values (1,2);
insert into gramaticaportema values (1,3);

insert into preguntaportema values(2,1);

describe practica;
describe preguntaporquiz;

insert into practica values(null,1,1,'Jose1' );

describe preguntaporquiz;
select * from tema;
select * from gramaticaportema;
select * from practica;
select * from estadistica;
select * from preguntaportema;
select * from gramatica;
select * from preguntacontestadaporusuaruio;
select * from usuario;
select * from preguntaporquiz;
select * from pregunta;
select * from quiz;
select * from sujeto;
select * from verbo;

describe preguntacontestadaporusuaruio;
select p.idPregunta, p.Pregunta, p.RespuestaCorrecta, p.RespuestaIncorrecta1, p.RespuestaIncorrecta2, p.RespuestaIncorrecta3 from pregunta p, quiz q,preguntaporquiz pr where pr.IdQuiz=q.idQuiz and pr.idPregunta=p.idPregunta;

insert into preguntaporquiz values(null,2,1);
insert into preguntaporquiz values (null,5,1);
insert into preguntaporquiz values (null,6,1);
insert into preguntaporquiz values (null,8,1);
insert into preguntaporquiz values (null,9,1);
insert into preguntaporquiz values (null,10,1);
insert into preguntaporquiz values (null,11,1);

delete from preguntacontestadaporusuaruio where User like 'Jose1';
