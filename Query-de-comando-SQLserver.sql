create table [dbo].[Atores](
	[Id] [int] identity (1,1) primary key not null,
	[Nome] [varchar] (20) null, 
	[Sobrenome] [varchar] (20) null, 
	[Genero] [varchar] (1) null
	)


	insert into Atores Values('Caio', 'Monteiro', 'M')
	insert into Atores Values('Marcelo', 'Andrade', 'M')
	insert into Atores Values('Amanda', 'Lamas', 'F')
	insert into Atores Values('Joao', 'Monteiro', 'M')
	insert into Atores Values('Lucas', 'Miller', 'M')
	insert into Atores Values('Carina', 'Damas', 'F')

	  


	create table Filmes (
	Id int primary key identity (1,1) not null,
	Nome varchar(50) null,
	Ano int null,
	Duracao int null
	)

	insert into Filmes Values('Super Mario', 2020, 2)

	create table ElencoFilme (
	Id int primary key identity (1,1) not null, 
	IdAtor int not null,
	IdFilme int null, 
	Papel varchar(30) null

	constraint FK_ElencoFilme_Atores_Filmes foreign key (IdAtor) references Atores(Id),
	constraint FK_ElencoFilme_Filmes foreign key (IdFilme) references Filmes(Id)
	)

	insert into ElencoFilme values(1, 1, 'Ator principál') 

	select * from ElencoFilme

	create table Genero(
	Id int primary key identity (1,1) not null,
	Genero varchar (20) null
	)

	create table FilmesGenero (
	Id int primary key identity (1,1) not null, 
	IdGenero int null,
	IdFilme int null,
	constraint FK_FilmesGenero_Genero foreign key (IdGenero) references Genero(Id),
	constraint FK_FilmesGenero_Filmes foreign key (IdFilme) references Filmes(Id)
	)

	insert into Genero values('Comedia')
	insert into Genero values('Terror')
	insert into Genero values('Acao')
	insert into Genero values('Drama')

	select * from genero

	select * from ElencoFilme

	insert into ElencoFilme values(3, 3, 'Coadjuvante')

	insert into FilmesGenero values(3, 1)

	select * from Filmes inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme 
	inner join Genero on FilmesGenero.IdGenero = Genero.Id
	
