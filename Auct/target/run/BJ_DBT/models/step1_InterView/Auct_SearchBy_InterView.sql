create view "dbo_stg"."Auct_SearchBy_InterView__dbt_tmp" as
    
Select
	[SEARCHBYID] [SearchByID],
	[ACTIVE] [Active],
	[SEARCHFORID] [SearchForID],
	cast([NAME] as nvarchar(4000)) [Name],
	[DISPLAYORDER] [DisplayOrder]
From stg.[Auct_SearchBy_Raw]
