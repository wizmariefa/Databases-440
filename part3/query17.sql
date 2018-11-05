.read data.sql

select Highschooler.name, Highschooler.grade from Highschooler
inner join Likes
on Likes.ID2 = Highschooler.ID
group by Highschooler.name
having count(name) > 1