-- Query that uses indexing on Name column in Table Author for improving performance --
-- Indexing increases the speed of searching the database --
-- Most often coulmns to be indexed are - columns referenced in the WHERE clause and columns used in JOIN clauses.

SELECT DISTINCT TOP 1000 a.Name AS 'Author Name',	-- no need to index
					   p.Title AS 'Poem', 
					   e.Name AS 'Emotion'
FROM Author a 
LEFT JOIN Poem p ON a.Id = p.AuthorId			-- consider indexing
LEFT JOIN PoemEmotion pe ON pe.PoemId = p.Id	-- consider indexing
LEFT JOIN Emotion e ON e.Id = pe.EmotionId		-- consider indexing 
-- where e.Name = 'Joy';
where p.Title LIKE '%My%' AND e.Name = 'Joy';	-- consider indexing Poem.Title and Emotion.Name
