create view "stg"."CC_TitleStatus_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([Description] as nvarchar(4000)) [Description]
From stg.[CC_TitleStatus_Raw]
