DROP PROCEDURE IF EXISTS spGetAuthorsAndPoemsByGrade;
GO

CREATE PROCEDURE spGetAuthorsAndPoemsByGrade
	-- input parameters to a stored procedure
	@GradeName nvarchar(30)

AS
BEGIN
	SELECT a.Id, a.Name as 'Author', g.Name AS 'Grade'
		FROM Author a
		LEFT JOIN Grade g ON g.Id = a.GradeId
	WHERE g.Name LIKE '%'+@GradeName+'%';

	SELECT p.Id, p.Title as 'Poem', p.WordCount
		FROM Poem p
		LEFT JOIN Author a ON a.Id = p.AuthorId
		LEFT JOIN Grade g ON g.Id = a.GradeId
	WHERE g.Name LIKE '%'+@GradeName+'%';
END
GO

-- Execute the stored procedure
EXECUTE spGetAuthorsAndPoemsByGrade @GradeName = '3rd Grade';
