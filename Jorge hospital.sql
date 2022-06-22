create database hospital1;
use hospital1;

create table chefe(
cre_enfermeirachefe int auto_increment not null primary key ,
nome varchar (40),
cre_enfermeira int -- chave estra
);


insert into chefe (nome, cre_enfermeira) values ('laura', 1);
insert into chefe (nome, cre_enfermeira) values ('naira',2);
insert into chefe (nome, cre_enfermeira) values ('sandra',3);
insert into chefe (nome, cre_enfermeira) values ('izabeli',4);
insert into chefe (nome, cre_enfermeira) values ('vitoria',5);


create table enfermeira(
cre_enfermeira int auto_increment not null primary key,
nome varchar (40),
cre_enfermeirachefe int not null -- chave estra
);


insert into enfermeira (nome, cre_enfermeirachefe) values ('elisangela',5);
insert into enfermeira (nome, cre_enfermeirachefe) values ('melia',4);
insert into enfermeira (nome, cre_enfermeirachefe) values ('katerine',3);
insert into enfermeira (nome, cre_enfermeirachefe) values ('nanci',2);
insert into enfermeira (nome, cre_enfermeirachefe) values ('jordan',1);

create table alas(
id_ala int auto_increment primary key,
nome varchar (40),
cre_medico int, -- chave estra
cre_enfermeira int	-- chave estra
);


insert into alas (nome, cre_enfermeira) values ('cirurgica',3);
insert into alas (nome, cre_enfermeira) values ('enfermagem',2);
insert into alas (nome, cre_enfermeira) values ('reabilitação cardiaca',1);
insert into alas (nome, cre_enfermeira) values ('remedios',4);
insert into alas (nome, cre_enfermeira) values ('ambulatorio',5);

create table medico(
cre_medico int auto_increment primary key,
nome varchar(40),
especialização varchar(40),
planodesaude varchar(1)	 -- chave estra
);


insert into medico (nome, especialização, planodesaude) values ('pamela', 'cirurgia', 'A');
insert into medico (nome, especialização, planodesaude) values ('marcos', 'reabilitação', 'B');
insert into medico (nome, especialização, planodesaude) values ('sonia', 'enfermagem', 'C');
insert into medico (nome, especialização, planodesaude) values ('geraldo', 'ambulatorio', 'C');
insert into medico (nome, especialização, planodesaude) values ('manel', 'radiologia', 'B');
select * from medico;

create table plano(
ABC varchar(1) primary key, 
telefone_operadora varchar (11),
cnpj varchar (40) -- chave estra
);


insert into plano (ABC, telefone_operadora,cnpj) values ('A',31984572236,'96.438.1900001-00');
insert into plano (ABC, telefone_operadora,cnpj) values ('B','31986221564','96.438.1900001-00');
insert into plano (ABC, telefone_operadora,cnpj) values ('C',3196584715,'96.438.1900001-00');

create table paciente(
id_paciente int auto_increment primary key,
id_atendimento datetime, -- chave estra
nome varchar(40),
cpf varchar(40) not null, 
ABC varchar (1) -- chave estra
);


insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-05-07 06:30:00', 'tadeu','066.812.230-79','A');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-05-011 13:30:00', 'Júnior ','644.762.460-79','A');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-05-15 06:30:00', 'Liara  ','381.577.580-92','A');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-05-15 13:00:00', 'Zlata  ','572.109.850-34','A');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-05-07 06:30:00', 'Liz  ','127.057.600-32','B');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-05-14 08:00:00', 'Fedra  ','048.464.330-48','C');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-05-07 15:00:00', 'Iulian  ','590.671.930-03','B');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-06-01 06:30:00', 'Maxim  ','141.687.610-37','B');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-05-09 14:00:00', 'Constança','519.853.240-16','A');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-05-17 08:30:00', 'Hao  ','676.474.180-84','A');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-05-20 13:00:00', 'Fábio  ','796.191.060-32','C');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-05-18 11:00:00', 'Mizael  ','896.494.870-61','C');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-04-14 11:00:00', 'Fabio  ','896.454.080-61','C');
insert into paciente (id_atendimento, nome, cpf, ABC) values ('2022-04-01 11:00:00', 'izael  ','858.594.080-61','C');
select * from paciente;
create table atendimento (
id_atendimento datetime primary key,
cre_medico float, -- chave estra 
cre_enfermeira float, -- chave estra
id_paciente int not null  -- chave estra
);

select * from atendimento;
 
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-07 06:30:00',1,2,1);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-11 13:30:00',1,2,2);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-15 06:30:00',1,2,3);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-15 13:00:00',1,2,4);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-09 14:00:00',1,2,9);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-17 08:30:00',1,2,10);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-08 06:30:00',2,1,5);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-07 15:00:00',2,1,7);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-06-01 06:30:00',5,1,8);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-14 15:00:00',2,1,7);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-14 08:00:00',3,3,6);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-20 13:00:00',3,3,11);
insert atendimento (id_atendimento, cre_medico, cre_enfermeira,id_paciente) values ('2022-05-18 11:00:00',3,3,12);

create table hospital(
cnpj varchar (30) not null primary key,
nome varchar (40),
cep int not null
);

	

insert hospital (cnpj, nome, cep) values ('96.438.190/0001-00','Hospital Krawk Neves', 59075-280);


alter table atendimento 	add foreign key (id_paciente) 		  references paciente (id_paciente);
alter table atendimento 	add foreign key (cre_enfermeira)	  references enfermeira (cre_enfermeira);
alter table atendimento 	add foreign key (cre_medico)          references medico (cre_medico);
alter table paciente 		add foreign key (id_atendimento) 	  references atendimento (id_atendimento);
alter table paciente 		add foreign key (ABC)				  references plano (ABC);
alter table medico	 		add foreign key (planodesaude)		  references plano (ABC); 
alter table alas			add foreign key (cre_enfermeira) 	  references enfermeira (cre_enfermeira);
alter table alas	 		add foreign key (cre_medico) 	 	  references medico (cre_medico);
alter table chefe	 		add foreign key (cre_enfermeira)	  references enfermeira (cre_enfermeira);
alter table enfermeira  	add foreign key (cre_enfermeirachefe) references chefe (cre_enfermeirachefe);

-- lista pacientes 
select nome, cpf from paciente; 

-- lista medicos
select nome,cre_medico from medico;

-- lista enfermeira 
select nome, cre_enfermeira, cre_enfermeira from enfermeira;

-- lista enfermiera chefe 
select nome, cre_enfermeirachefe from chefe;

-- cronocrama pamela(medico)
SELECT * FROM atendimento 
WHERE cre_medico =1 ;

-- cronocrama marcos(medico)
SELECT * FROM atendimento 
WHERE cre_medico =2 ;

-- cronocrama sonia(medico)
SELECT * FROM atendimento 
WHERE cre_medico =3 ;

-- cronocrama geraldo(medico)
SELECT * FROM atendimento 
WHERE cre_medico =4 ;

-- cronocrama manel(medico)
SELECT * FROM atendimento 
WHERE cre_medico =5 ;

-- contidade de pacientes
select count(id_paciente)  from atendimento; 

-- atendimento mês 05
select * from atendimento where id_atendimento between '2022-05-07' and '2022-05-30';

-- atendimento  mês 06
select * from atendimento where id_atendimento between '2022-06-01'and '2022-06-30';

-- paciente com plano A
select * from paciente where ABC like 'A%';


-- deletar paciente com plano B
select * from paciente where ABC like 'B%';

-- deletar paciente com plano C
select * from paciente where ABC like 'C%';



-- não deu pra fazer o GROUP BY E HAVING sandrinha 