.read data.sql

select A.name, A.ID from Highschooler as A
inner join Likes
where A.ID = Likes.ID1
and Likes.ID2 not in (
	select Friend.ID2 from Friend
	where A.ID = Friend.ID1
)
order by A.ID

-- this finds every student A who likes someone they are not friends with (assuming A being friends with B does not imply B being friends with A)
