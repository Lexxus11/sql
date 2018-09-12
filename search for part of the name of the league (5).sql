select f.name, f.stadium, f.quantity_trophies, l.name from football_clubs as f
join league as l on f.id = l.club_id 
order by l.name