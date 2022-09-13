-- Creating an index in SQL Server --

-- Naming Convention for Indexing --
-- Use ix or idx as a prefix followed by Table-name followed by name of column/columns --

/*
DROP INDEX IF EXISTS Author.Idx_Author_Name;
GO

CREATE INDEX Idx_Author_Name 
ON Author(Name);		-- Here, we can add multiple columns for Author table; E.g. Author (FirstName, LastName) --

GO
*/

DROP INDEX IF EXISTS Poem.Idx_Poem_Title;
GO

CREATE INDEX Idx_Poem_Title 
ON Poem(Title);		

GO
