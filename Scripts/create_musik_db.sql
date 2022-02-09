create  table if not exists Genre(
	id serial primary key,
	Name varchar(50) unique	
);
create table if not exists Artist(
	id serial primary key,
	Name varchar(50),
	Genre_id integer references Genre(id)
);
create table if not exists Album(
	id serial primary key,
	Artist_id integer references Artist(id),
	Title varchar(50) unique,
	Year integer check(Year > 1900)
);
create table if not exists Track(
	id serial not null primary key,
	Album_id integer references Album(id),
	Name varchar(100) unique,
	Duration integer not null
);