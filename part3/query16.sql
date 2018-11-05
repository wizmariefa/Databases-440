.read data.sql

select (select count(Highschooler.ID) from Highschooler)
- (select count(distinct Highschooler.name) from Highschooler)