create view "stg"."Auct_Season_InterView__dbt_tmp" as
    
Select
	[SEASONID] [SeasonID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_Season_Raw]
