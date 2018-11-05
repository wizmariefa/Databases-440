# Part 03

For this part of the project, we will be writing a bunch of SQL and will
make your submission
with Bitbucket.  You will fork the repository into your own private Bitbucket
repository, where you will make your additions to the code base. We use
Bitbucket because private repositories are free. On GitHub, you will need a paid
or an academic account to have private repos.  I will continue updating this
repository through the semester so I recommend that you follow the setup
instruction in order to keep your repository up-to-date, while also being able
to push changes up to your own personal repository.

See [directions](SETUP.md) on one way to set up your workflow.

## Share the repository

Since you're encouraged to work in teams for the labs, you'll probably want to
share the repository with your teammates.  You also must share your repository
with me and our course assistant so that we can grade your work. In the upper
right, there is usually an 'Invite users to this repo' box with a 'Send
invitation' button. Click the button to add users (my username is
`david_millman`, Philip's username is `TBA`). If the 'Invite
users to this repo' box isn't there, you can also add users through the
'Settings' menu on the left hand side. Click 'Settings', then 'User and Group
access', where you can add users.

## Submitting your work

For this part of the project submit on D2L.  There are two submission
folders, one is for the group and the other is for the individual.
In the group submission, supply your your team members' names, a link to
your repository, and hash value of the commit that you are submitting.  (See
[SETUP.md](SETUP.md) if you are unsure how to get the hash of a commit.)

** Note: Normally with git, forks are used to make changes to a repository that
you don't own. After implementing a feature, usually a pull request is issued
from your fork to the original repository. The maintainers of the original
repository can choose to incorporate your changes or not. Unfortunately, pull
requests on public repositories (like this one), are public as well. So if you
were to turn in your work using pull requests, anyone could view it, so we're
NOT using pull requests. **

## Writing your queries

In this part of the project, we will write a lot of queries.  Some of the
queries will modify the database, so we will want to make sure that we reload
the database before each query.  To make life a little easier on the grader,
please following the following conventions for each query:

* put each query in a file named `queryXX.sql` where XX is the question number.
  The question number should have two digits, so the query for question 5 should
  be in the file `query05.sql`.

* load the data file at the beginning of each query.  So, each query should
  begin with the command `.read data.sql`

Let's see an example for question 1 below.  Question 1 asks

    It's time for the seniors to graduate. Remove all 12th graders from
    Highschooler.

First, we create a file `query01.sql`

    $ touch query01.sql

Open the file in your text editor of choice (mine is vim).

    $ vim query01.sql

Write a script to read the data sql file and a query that solves the problem.
My solution is

    .read data.sql

    delete from Highschooler
        where grade = 12;

Great!  Now, you are ready to do the rest of the questions!

## Write some queries

1. It's time for the seniors to graduate. Remove all 12th graders from
   Highschooler.

2. If two students A and B are friends, and A likes B but not vice-versa, remove
   the Likes tuple.

3. For all cases where A is friends with B, and B is friends with C, add a new
   friendship for the pair A and C. Do not add duplicate friendships,
   friendships that already exist, or friendships with oneself.

4. For every situation where student A likes student B, but student B likes a
   different student C, return the names and grades of A, B, and C.

5. Find those students for whom all of their friends are in different grades
   from themselves. Return the students' names and grades.

6. What is the average number of friends per student? (Your result should be
   just one number.)

7. Find the number of students who are either friends with Cassandra or are
   friends of friends of Cassandra. Do not count Cassandra, even though
   technically she is a friend of a friend.

8. Find the name and grade of the student(s) with the greatest number of
   friends.

9. Find the names of all students who are friends with someone named Gabriel.

10. For every student who likes someone 2 or more grades younger than
    themselves, return that student's name and grade, and the name and grade of
    the student they like.

11. For every pair of students who both like each other, return the name and
    grade of both students. Include each pair only once, with the two names in
    alphabetical order.

12. Find all students who do not appear in the Likes table (as a student who
    likes or is liked) and return their names and grades. Sort by grade, then by
    name within each grade.

13. For every situation where student A likes student B, but we have no
    information about whom B likes (that is, B does not appear as an ID1 in the
    Likes table), return A and B's names and grades.

14. Find names and grades of students who only have friends in the same grade.
    Return the result sorted by grade, then by name within each grade.

15. For each student A who likes a student B where the two are not friends, find
    if they have a friend C in common (who can introduce them!). For all such
        trios, return the name and grade of A, B, and C.

16. Find the difference between the number of students in the school and the
    number of different first names.

17. Find the name and grade of all students who are liked by more than one other
    student.




