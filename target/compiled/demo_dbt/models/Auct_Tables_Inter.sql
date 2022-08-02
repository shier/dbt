
Select
	TABLEID TableID,
	USERSID UsersID,
	DATECREATED DateCreated,
	cast(TABLENAME as nvarchar(4000)) TableName
From Auct_Tables_Raw