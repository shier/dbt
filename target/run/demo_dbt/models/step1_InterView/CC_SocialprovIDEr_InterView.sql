create view "stg"."CC_SocialprovIDEr_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	cast([AppKey] as nvarchar(4000)) [AppKey],
	cast([AppSecret] as nvarchar(4000)) [AppSecret],
	[IsActive] [IsActive]
From stg.[CC_SocialprovIDEr_Raw]
