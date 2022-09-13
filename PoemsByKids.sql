
-- 1. What grades are stored in the database?
select * from Grade;

-- 2. What emotions may be associated with a poem?
select p.Title as PoemTitle, e.Name as Emotion
from Emotion e 
join PoemEmotion pe on e.Id = pe.EmotionId
join Poem p on pe.PoemId = p.Id;

-- 3. How many poems are in the database?
select COUNT(p.Id) as 'Number of poems'
from Poem p;

-- 4. Sort authors alphabetically by name. What are the names of the top 76 authors?
select distinct top 76 a.Name as 'Author Name'
from Author a
order by a.Name;

-- 5. Starting with the above query, add the grade of each of the authors.
select distinct top 76 a.Name as 'Author Name', g.Name as Grade
from Author a
join Grade g on a.GradeId = g.Id
order by a.Name, g.Name;

-- 6. Starting with the above query, add the recorded gender of each of the authors.
select distinct top 76 a.Name as 'Author Name', g.Name as Grade, gd.Name as Gender
from Author a
join Grade g on a.GradeId = g.Id
join Gender gd on gd.Id = a.GenderId
order by a.Name, g.Name;

-- 7. What is the total number of words in all poems in the database?
select p.Title, p.WordCount 
from Poem p;

select SUM(p.WordCount) as 'Total number of words in all poems'
from Poem p;

-- 8. Which poem has the fewest characters?
select top 1 *
from Poem p
order by p.CharCount;

-- 9. How many authors are in the third grade?
select COUNT(a.Id) as 'Authors in 3rd Grade'
from Author a
join Grade gr on a.GradeId = gr.Id
where gr.Name = '3rd Grade';

-- 10. How many total authors are in the first through third grades?
select COUNT(a.Id) as 'Authors from 1st through 3rd Grade'
from Author a
join Grade gr on a.GradeId = gr.Id
where gr.Name in ('1st Grade', '2nd Grade', '3rd Grade');

-- 11. What is the total number of poems written by fourth graders?
select COUNT(p.Id) as 'Number of poems by 4th Graders'
from Poem p
join Author a on p.AuthorId = a.Id
join Grade gr on gr.Id = a.GradeId
where gr.Name = '4th Grade';

-- 12. How many poems are there per grade?
select gr.Name as Grade, COUNT(p.Id) as 'Poems per grade'
from Poem p
join Author a on p.AuthorId = a.Id
join Grade gr on gr.Id = a.GradeId
Group by gr.Name;

-- 13. How many authors are in each grade? (Order your results by grade starting with 1st Grade)
select gr.Name as Grade, COUNT(a.Id) as 'Number of Authors'
from Author a 
join Grade gr on gr.Id = a.GradeId
Group by gr.Name;

-- 14. What is the title of the poem that has the most words?
select top 1 p.Title, p.WordCount
from Poem p 
order by p.WordCount desc;

-- 15. Which author(s) have the most poems? (Remember authors can have the same name.)
select top 5 a.Name as Author, COUNT(p.Id) as 'Number of Poems'
from Author a 
left join Poem p on p.AuthorId = a.Id
Group by a.Name
Order by COUNT(p.Id) desc;

-- 16. How many poems have an emotion of sadness?
select COUNT(p.Id) as 'Number of Poems with sadness'
from Poem p
left join PoemEmotion pe on pe.PoemId = p.Id
left join Emotion e on e.Id = pe.EmotionId
where e.Name = 'Sadness';

-- 17. How many poems are not associated with any emotion?
SELECT COUNT(p.Id) as 'Number of Poems with no emotions' 
FROM Poem p
LEFT JOIN PoemEmotion pe ON pe.PoemId = p.Id
WHERE pe.PoemId IS NULL;

select COUNT(p.Id) as 'Number of Poems with no emotions' from Poem p where p.Id not in (select PoemId from PoemEmotion);

-- select * from Poem p where p.Id not in (select PoemId from PoemEmotion);

-- 18. Which emotion is associated with the least number of poems?
select top 1 e.Name, COUNT(pe.PoemId) as 'Number of Poems' 
from PoemEmotion pe
join Emotion e on e.Id = pe.EmotionId
Group by e.Name
order by COUNT(pe.PoemId);

-- 19. Which grade has the largest number of poems with an emotion of joy?
select top 1 gr.Name, COUNT(p.Id) as 'Number of Poems with joy'
from Poem p
join PoemEmotion pe on pe.PoemId = p.Id
join Emotion e on e.Id = pe.EmotionId
join Author a on a.Id = p.AuthorId
join Grade gr on gr.Id = a.GradeId
where e.Name = 'Joy'
Group by gr.Name
order by COUNT(p.Id) desc;

-- 20. Which gender has the least number of poems with an emotion of fear?
select top 1 g.Name, COUNT(p.Id) as 'Number of Poems with fear'
from Poem p
join PoemEmotion pe on pe.PoemId = p.Id
join Emotion e on e.Id = pe.EmotionId
join Author a on a.Id = p.AuthorId
join Gender g on g.Id = a.GenderId
where e.Name = 'Fear'
Group by g.Name
order by COUNT(p.Id);

-- 21. How many authors are named "alice"
select COUNT(a.Id) as 'Authors with name Alice'
from Author a where a.Name = 'Alice';

-- 22. find all the poems that contain the word "horse"
select Poem.* 
from Poem where Text like '%horse%';