create table if not exists Album(
	id serial primary key,
	title varchar(255),
	year integer check (year > 1900)
);
create table if not exists Song(
	id serial primary key,
	album_id integer not null references Album(id),	
	title varchar(255) not null,
	duration integer
);
create table if not exists Collections(
	id serial primary key,
	name varchar(255) not null unique,
	year integer check(year > 1900)
);
create table if not exists CollectionsTrack(
	collections_id integer not null references Collections(id),
	song_id integer not null references Song(id),
	constraint CT primary key (collections_id, song_id)
);
create table if not exists Artist(
	id serial primary key,
	name varchar(255) not null unique
);
create table if not exists ArtistAlbum(
	artist_id integer not null references Artist(id),
	album_id integer not null references Album(id),
	constraint AA primary key (artist_id, album_id)
);
create table if not exists Genre(
	id serial primary key,
	name varchar(255) not null unique
);
create table if not exists GenreArtist(
	genre_id integer not null references Genre(id),
	artist_id integer not null references Artist(id),
	constraint GA primary key (genre_id, artist_id)
);