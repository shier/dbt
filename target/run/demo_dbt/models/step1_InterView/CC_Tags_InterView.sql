create view "stg"."CC_Tags_InterView__dbt_tmp" as
    
Select
	[TagPK] [TagPK],
	cast([TagName] as nvarchar(4000)) [TagName],
	cast([Slug] as nvarchar(4000)) [Slug]
From stg.[CC_Tags_Raw]
