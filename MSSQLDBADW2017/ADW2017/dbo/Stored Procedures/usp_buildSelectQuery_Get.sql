CREATE PROCEDURE [dbo].[usp_buildSelectQuery_Get]
@SourceTableName VARCHAR(50)
AS
BEGIN
 DECLARE @colList NVARCHAR(4000)
 SELECT @colList = COALESCE(@colList + ',','') + 
                       CASE WHEN A.DATA_TYPE='datetime'
                            THEN (A.COLUMN_NAME+'|'+A.DATA_TYPE)
                            ELSE A.COLUMN_NAME
                       END                                     
 FROM INFORMATION_SCHEMA.COLUMNS AS A
 WHERE A.TABLE_NAME = @SourceTableName
 ORDER BY A.ORDINAL_POSITION
 
 SELECT 'SELECT'+ CHAR(32) + @colList + CHAR(32)+ 'FROM' + CHAR(32) + 'dbo.'+ @SourceTableName
END