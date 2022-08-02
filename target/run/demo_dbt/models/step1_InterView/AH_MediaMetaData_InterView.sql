create view "stg"."AH_MediaMetaData_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_MediaMetaData_Raw]
