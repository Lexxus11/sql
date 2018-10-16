select name from football_clubs where name like 'ars%'

select f.name, f.stadium, f.quantity_trophies, l.name from football_clubs as f
join league as l on f.id = l.club_id 
order by l.name

select stadium from football_clubs where stadium like 'all%'

select name from trophie where name like '%cup%' group by name

https://github.com/Lexxus11/sql.git