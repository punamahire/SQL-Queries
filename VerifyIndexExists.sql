-- 2 different Ways to verify if an index exists on a Table in SQL Server

IF 1 = (SELECT COUNT(*) as index_count
    FROM sys.indexes 
    WHERE object_id = OBJECT_ID('Author') -- Check if Author table has an index --
    AND name='Idx_Author_Name')           -- Give the name of the index to be searched --
PRINT 'it exists!'
ELSE PRINT 'nope';
GO

-- OR 2nd way --

IF EXISTS (
    SELECT 'foo'
    FROM sys.indexes 
    WHERE object_id = OBJECT_ID('Author')
    AND name='Idx_Author_Name')
PRINT 'it exists!'
ELSE PRINT 'nope';
GO

-- For another table and column

IF EXISTS (
    SELECT 'foo'
    FROM sys.indexes 
    WHERE object_id = OBJECT_ID('Poem')
    AND name='Idx_Poem_Title')
PRINT 'it exists!'
ELSE PRINT 'nope';
GO