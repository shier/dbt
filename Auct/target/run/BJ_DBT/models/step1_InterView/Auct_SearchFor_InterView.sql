create view "stg"."Auct_SearchFor_InterView__dbt_tmp" as
    
Select
	[SEARCHFORID] [SearchForID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_SearchFor_Raw]
