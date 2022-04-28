select title, year from album
	where "year" = 2018;
	
select title, duration / 60, duration % 60 from song
	where duration = (select max(duration) from song);
	
select title from song
	where duration > 3.5 * 60;
	
select name from collections
	where "year" between 2018 and 2020;
	
select name from artist
	where "name" not like '% %';

select title from song
	where (title ilike '%мой%') or (title ilike '%my%');

	